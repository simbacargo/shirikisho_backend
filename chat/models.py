from __future__ import unicode_literals
from django.db.models.signals import post_save,pre_save
from notifications.models import Notification
from django.db.models import Q
from django.conf import settings

from django.db import models
from django.db.models import Max
from django.utils.translation import gettext_lazy as _
from django.contrib.auth import (authenticate, get_user_model, password_validation,)
User = get_user_model()

STATUS = (
    ('public', 'public'),('personal', 'personal'),
    )
from .managers import ThreadManager



class ThreadManager(models.Manager):
    def by_user(self, user):
        qlookup = Q(first=user) | Q(second=user)
        qlookup2 = Q(first=user) & Q(second=user)
        qs = self.get_queryset().filter(qlookup).exclude(qlookup2).distinct()
        return qs

    def get_or_new(self, user, other_username):  # get_or_create
        username = user.username
        if username == other_username:
            return None
        qlookup1 = Q(first__username=username) & Q(
            second__username=other_username)
        qlookup2 = Q(first__username=other_username) & Q(
            second__username=username)
        qs = self.get_queryset().filter(qlookup1 | qlookup2).distinct()
        if qs.count() == 1:
            return qs.first(), False
        elif qs.count() > 1:
            return qs.order_by('timestamp').first(), False
        else:
            Klass = user.__class__
            user2 = Klass.objects.get(username=other_username)
            if user != user2:
                obj = self.model(
                        first=user,
                    second=user2
                )
                obj.save()
                return obj, True
            return None, False


class Thread(models.Model):
    first = models.ForeignKey(
        settings.AUTH_USER_MODEL, on_delete=models.CASCADE, related_name='chat_thread_first')
    second = models.ForeignKey(
        settings.AUTH_USER_MODEL, on_delete=models.CASCADE, related_name='chat_thread_second')
    updated = models.DateTimeField(auto_now=True)
    timestamp = models.DateTimeField(auto_now_add=True)

    objects = ThreadManager()

    @property
    def room_group_name(self):
        return f'chat_{self.id}'

    def broadcast(self, msg=None):
        if msg is not None:
            broadcast_msg_to_chat(msg, group_name=self.room_group_name, user='admin')
            return True
        return False


class Message(models.Model):
    user = models.ForeignKey(User, related_name='+',on_delete=models.CASCADE,null=True)
    message = models.CharField(max_length=1000, blank=False, null=False)
    user_agent = models.CharField(max_length=1000, blank=False, null=False)
    thread = models.ForeignKey(Thread, null=True, blank=True, on_delete=models.SET_NULL)
    date = models.DateTimeField(auto_now_add=True,db_index=True) # the last key makes sure taht this fiels is indexed to increase perfornace for fields that are used in filter,exclude or orderby
    to_user = models.ForeignKey(User, related_name='+',on_delete=models.CASCADE,null=True)
    # to_user = models.ManyToManyField(User, related_name='+',null=True)
    from_user = models.ForeignKey(User, related_name='+',on_delete=models.CASCADE,null=True)
    is_read = models.BooleanField(default=False)
    thread_type = models.CharField(max_length=8, choices=STATUS, default="personal")
    file = models.FileField(verbose_name="mulimedia",upload_to='chat/media',)
    objects = ThreadManager()

    class Meta:
        verbose_name = _('Message')
        verbose_name_plural = _('Messages')
        ordering = ('date',)
        db_table = 'messages_message'

    def __str__(self):
        return self.message

    @staticmethod
    def send_message(from_user, to_user, message):
        message = message[:1000]
        current_user_message = Message(from_user=from_user,
                                       message=message,
                                       user=to_user,
                                       to_user=to_user,
                                       is_read=True)
        current_user_message.save()
        Message(from_user=from_user,
                to_user=to_user,
                message=message,
                user=from_user).save()

        return current_user_message

    @staticmethod
    def get_to_users(user) -> list:
        to_users = Message.objects.filter(user=user).values('to_user').annotate(last=Max('date')).order_by('-last')
        users = []
        for to_user in to_users:
            users.append({
                'user': User.objects.get(pk=to_user['to_user']),
                'last': to_user['last'],
                'unread': Message.objects.filter(user=user,
                                                 to_user__pk=to_user[
                                                    'to_user'],
                                                 is_read=False).count(),
                })

        return users












def notify_receiver(sender, instance, created, **kwargs):
    if created:
        print(instance.to_user)
        print(instance.from_user)
        Notification.objects.create(to_user=instance.to_user,from_user=instance.from_user,notification_type="TEXTED")
        # Notification.save(*args, **kwargs)




# def save_notification(sender, instance, **kwargs):
    # instance.notification.save()


post_save.connect(notify_receiver, sender=Message)
# post_save.connect(save_notification, sender=Message)















class ChatMessage(models.Model):
    thread = models.ForeignKey(
        Thread, null=True, blank=True, on_delete=models.SET_NULL)
    user = models.ForeignKey(settings.AUTH_USER_MODEL,
                             verbose_name='sender', on_delete=models.CASCADE)
    message = models.TextField()
    timestamp = models.DateTimeField(auto_now_add=True)
