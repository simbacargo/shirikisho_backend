from __future__ import unicode_literals
from django.db.models import Model
import json

from django.db.models.functions import TruncMonth, TruncDay
from django.db.models import Count

# from django.contrib.auth.models import User
from django.db import models
from django.utils.html import escape
# from activities.models import User
from config.settings import AUTH_USER_MODEL
# Create your models here.
User =AUTH_USER_MODEL
class Notification(Model):
    LIKED = 'L'
    COMMENTED = 'C'
    ALSO_COMMENTED = 'S'
    FOLLOWED = 'F' 
    TEXTED = 'TEXTED' 
    UNFOLLOWED = 'U' 
    REQUEST_FRIENDSHIPD = 'U' 
    ACCEPT_FRIENDSHIPD = 'U' 
    RESPONDED = 'R' # This will be used when a user has responded or reacted to somebody eles THING 
    NOTIFICATION_TYPES = (
        (LIKED, 'LIKED'),
        (COMMENTED, 'COMMENTED'),
        (ALSO_COMMENTED, 'ALSO_COMMENTED'),
        (FOLLOWED, 'FOLLOWED'),
        (UNFOLLOWED, 'UNFOLLOWED'),
        (REQUEST_FRIENDSHIPD, 'REQUEST_FRIENDSHIPD'),
        (ACCEPT_FRIENDSHIPD, 'ACCEPT_FRIENDSHIPD'),
        (RESPONDED, 'RESPONDED'),
        (TEXTED, 'TEXTED'),
        )

    _LIKED_TEMPLATE = '<a href="/{0}/">{1}</a>LIKED liked your post: <a href="/feeds/{2}/">{3}</a>'  # noqa: E501
    _COMMENTED_TEMPLATE = '<a href="/{0}/">{1}</a>COMMENTED commented on your post: <a href="/feeds/{2}/">{3}</a>'  # noqa: E501
    _ALSO_COMMENTED_TEMPLATE = '<a href="/{0}/">{1}</a>ALSO_COMMENTED commented on your post: <a href="/feeds/{2}/">{3}</a>'  # noqa: E501
    _FOLLOWED_TEMPLATE = '<a href="/{0}/">{1}</a>FOLLOWED answered your question: <a href="/questions/{2}/">{3}</a>'  # noqa: E501
    _UNFOLLOWED_TEMPLATE = '<a href="/{0}/">{1}</a>UNFOLLOWED accepted your answer: <a href="/questions/{2}/">{3}</a>'  # noqa: E501
    _REQUEST_FRIENDSHIPD_TEMPLATE = '<a href="/{0}/">{1}</a>REQUEST_FRIENDSHIPD edited your article: <a href="/article/{2}/">{3}</a>'  # noqa: E501
    _ACCEPT_FRIENDSHIPD_TEMPLATE = '<a href="/{0}/">{1}</a>ACCEPT_FRIENDSHIPD also commentend on the post: <a href="/feeds/{2}/">{3}</a>'  # noqa: E
    _RESPONDED_TEMPLATE = '<a href="/{0}/">{1}</a>RESPONDED also commentend on the post: <a href="/feeds/{2}/">{3}</a>'  # noqa: E
    _TEXTED_TEMPLATE = '<a href="/{0}/">{1}</a>has just texted you'  # noqa: E
    

    from_user = models.ForeignKey(User, related_name='+',on_delete=models.CASCADE)
    to_user = models.ForeignKey(User, related_name='+',on_delete=models.CASCADE)
    date = models.DateTimeField(auto_now_add=True)
    title= models.CharField(max_length = 2000,null=1,blank=1) # This will be the heading of the notifications that eil be implemented on some of th e notifications
    # feed = models.ForeignKey('insta.Post', null=True, blank=True,on_delete=models.CASCADE)
    message = models.ForeignKey('chat.Message', null=True, blank=True,on_delete=models.CASCADE)
    notification_type = models.CharField(max_length=100,
                                         choices=NOTIFICATION_TYPES)
    is_read = models.BooleanField(default=False)
    is_new = models.BooleanField(default=False)
    is_urgent = models.BooleanField(default=False)
    is_recomendation = models.BooleanField(default=False)
    class feed:
        pk: dict ={'pk':None}
        pk =''
        post =''
    class Meta:
        verbose_name = 'Notification'
        verbose_name_plural = 'Notifications'
        ordering = ('-date',)

    def __str__(self)->str:

        if self.notification_type == self.LIKED:
            return self._LIKED_TEMPLATE.format(
                escape(self.from_user.username),
                escape(self.from_user.profile.get_screen_name()),
                self.feed.pk,
                escape(self.get_summary(self.feed.post))
                )
        elif self.notification_type == self.COMMENTED:
            return self._COMMENTED_TEMPLATE.format(
                escape(self.from_user.username),
                escape(self.from_user.profile.get_screen_name()),
                self.feed.pk,
                escape(self.get_summary(self.feed.post))
                )
        # elif self.notification_type == self.FAVORITED:
        #     return self._FAVORITED_TEMPLATE.format(
        #         escape(self.from_user.username),
        #         escape(self.from_user.profile.get_screen_name()),
        #         self.question.pk,
        #         escape(self.get_summary(self.question.title))
        #         )
        # elif self.notification_type == self.ANSWERED:
        #     return self._ANSWERED_TEMPLATE.format(
        #         escape(self.from_user.username),
        #         escape(self.from_user.profile.get_screen_name()),
        #         self.question.pk,
        #         escape(self.get_summary(self.question.title))
        #         )
        elif self.notification_type == self.TEXTED:
            return self._TEXTED_TEMPLATE.format(
                escape(self.from_user.username),
                escape(self.from_user.profile.get_screen_name()),
                self.message,
                escape(self.get_summary(self.message))
                )
        # elif self.notification_type == self.EDITED_ARTICLE:
        #     return self._EDITED_ARTICLE_TEMPLATE.format(
        #         escape(self.from_user.username),
        #         escape(self.from_user.profile.get_screen_name()),
        #         self.article.slug,
        #         escape(self.get_summary(self.article.title))
        #         )
        elif self.notification_type == self.ALSO_COMMENTED:
            return self._ALSO_COMMENTED_TEMPLATE.format(
                escape(self.from_user.username),
                escape(self.from_user.profile.get_screen_name()),
                self.feed.pk,
                escape(self.get_summary(self.feed.post))
                )
        else:
            print (self.notification_type)
            return 'Ooops! Something went wrong.'

  

    def get_summary(self, value) ->str:
        summary_size = 50
        if value is not None:
            if len(value) > summary_size:
                return '{0}...'.format(value[:summary_size])

        else:
            return value