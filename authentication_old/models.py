from django.conf import settings
from django.db import models
from django.utils.translation import gettext_lazy as _
import random
import os
from django.db.models import Q
from django.db.models.signals import pre_save, post_save
from django.urls import reverse
import uuid
# from activities.models import Notification
from django.contrib.auth.models import PermissionsMixin,BaseUserManager, AbstractBaseUser, Permission, _user_has_perm,AbstractUser
from core.models import TimeStampedModel
GENDER_TYPES = (
    ('M', 'Male'),
    ('F', 'Female'),
    ('N', 'Non Binary'),
    )

TITLES = (
    ("user","user"),
    ("admin","admin"),
    ("Operations","Operations"),
    ("Sales","Sales"),
    ("Customer Service","Customer Service"),
    ("Finance","Finance"),
)

LANGUAGE_ENGLISH = "en"
LANGUAGE_SWAHILI = "sw"
LANGUAGE_FRENCH  = "fr"

LANGUAGE_CHOICES = (
    (LANGUAGE_ENGLISH, "English"), 
    (LANGUAGE_FRENCH, "French"),
    (LANGUAGE_SWAHILI, "swahili")
    )

CURRENCY_USD = "usd"
CURRENCY_TSH = "tsh"

CURRENCY_CHOICES = ((CURRENCY_USD, "USD"), (CURRENCY_TSH, "TSH"))

LOGIN_EMAIL = 'email'
LOGIN_GITHUB = 'github'
LOGIN_FACEBOOK = 'facebook'
LOGIN_TWITTER = 'twitter'
LOGIN_GOOGLE = 'google'


LOGIN_CHOICES = (
        (LOGIN_EMAIL, 'email'),
        (LOGIN_GITHUB, 'github'),
        (LOGIN_FACEBOOK, 'facebook'),
        (LOGIN_TWITTER, 'twitter'),
        (LOGIN_GOOGLE, 'google'),
    )


def get_token():
    return str(uuid.uuid4())


def get_filename_ext(filepath):
    base_name = os.path.basename(filepath)
    name, ext = os.path.splitext(base_name)
    return name, ext

def upload_image_path(instance, filename):

    new_filename = random.randint(1,23232335)
    name, ext = get_filename_ext(filename)
    final_filename = '{new_filename}{ext}'.format(new_filename=new_filename, ext=ext)
    return "products/{new_filename}/{final_filename}".format(
            new_filename=new_filename,
            final_filename=final_filename
            )



class UserAccountManager(BaseUserManager):
    use_in_migrations = True
    # def get_queryset(self):
        # return super(UserAccountManager,self).get_queryset().filter(is_active=True)
    def _create_user(self, username,password,is_staff,is_superuser,**extra_fields):

        # if not email:
        #     raise ValueError('Users must have an email')

        if not password:
            raise ValueError('Users must have an password')

        if not username:
            raise ValueError('The given username must be set')
                # Save the user

        # email = self.normalize_email(email)
        username = self.model.normalize_username(username)

        user_obj = self.model(username=username,is_active = True,is_superuser = is_superuser,**extra_fields )
        user_obj.set_password(password)
        user_obj.save(using = self._db)
        return user_obj

    def create_user(self, username, password,**extra_fields):
        return self._create_user(username,password,False,False,**extra_fields)



    def create_superuser(self, username, password,**extra_fields):
        return self._create_user(username,password,True,True,**extra_fields)
    def get_by_natural_key(self, username):
        return self.get(username=username)


class User(TimeStampedModel,AbstractBaseUser,PermissionsMixin):
    # id = models.UUIDField(default=get_token, editable=False, unique=True,primary_key=True)
    firstname = models.CharField(max_length=100, null=True, blank=True)
    lastname = models.CharField(max_length=100, null=True, blank=True)
    username = models.CharField(max_length=100, null=False, unique=True)
    email = models.EmailField(max_length=255,unique=True,blank=True,null=True)
    gender = models.CharField(choices=GENDER_TYPES, max_length=10)
    is_active = models.BooleanField(default=True)#designates if accounts can be used to log in
    is_staff = models.BooleanField(default=True)#is user allowed to add and manage data
    is_admin = models.BooleanField(default=False)
    is_superuser = models.BooleanField(default=False)
    # hide_email = models.BooleanField(default=False)
    last_seen = models.DateTimeField(auto_now=True)
    password=models.CharField(blank=True,max_length=256)
    title=models.CharField(default="user",max_length=256,choices=TITLES)
    date_of_birth = models.DateField(default='2000-01-01', null=True)
    country = models.CharField(max_length=50, null=True)
    sales = models.CharField(max_length=50, null=True)#Pronvice
    city = models.CharField(max_length=50, null=True)
    area = models.CharField(max_length=150, null=True)
    mobile = models.CharField(max_length=26, default='0', null=True)
    date_joineds = models.DateTimeField(auto_now_add=True)
    pincode = models.CharField(default='', max_length=10, null=True)
    customers = models.CharField(default='0', max_length=10, null=True) # majina ya wateja walioletwa
    last_known_device = models.CharField(default='', max_length=100, null=True)
    # facebook_account = models.URLField(_("Facebook profile"), max_length=255, blank=True, null=True)
    # twitter_account = models.URLField(_("Twitter account"), max_length=255, blank=True, null=True)
    # github_account = models.URLField(_("GitHub profile"), max_length=255, blank=True, null=True)
    # linkedin_account = models.URLField(_("LinkedIn profile"), max_length=255, blank=True, null=True)
    # user_permissions = models.ManyToManyField(Permission, related_name='user_permissions', blank=True)
    USERNAME_FIELD = 'username'
    objects = UserAccountManager()

    REQUIRED_FIELDS = []
    def get_absolute_url(self):
        return "/authenticaton/{slug}/".format(slug=self.id)
        # return reverse("products:detail", kwargs={"slug": self.slug})

    class Meta:
        verbose_name = _('user')
        verbose_name_plural = _('Users')

    def __unicode__(self):
        return self.username
    def __str__(self):
        return str(self.username)
    # @property
    # def is_staff(self):
    #     return self.is_staff


    # @property
    # def is_admin(self):
    #     return self.is_admin

    def get_full_name(self):
        """
        Returns the given_name plus the family_name, with a space in between.
        """
        full_name = '%s %s' % (self.given_name, self.family_name)
        return full_name.strip()


    def get_username(self):
        """
        Returns the given_name plus the family_name, with a space in between.
        """
        # username = '%s %s' % (self.given_name, self.family_name)
        return self.username

    def get_short_name(self):
        "Returns the short name for the user."
        return str(self.username)

    # def email_user(self, subject, message, from_email=None, **kwargs):
    #     """
    #     Sends an email to this User.
    #     """
    #     send_mail(subject, message, from_email, [self.email], **kwargs)

    # def has_module_perms(self, app_label):
    #     """
    #     Returns True if the user has any permissions in the given app label.
    #     Uses pretty much the same logic as has_perm, above.
    #     """
    #     # Active superusers have all permissions.
    #     if self.is_active and self.is_superuser:
    #         return True
    #     return _user_has_module_perms(self, app_label)
    def has_perm(self, perm, obj=None):
        """
        Returns True if the user has the specified permission. This method
        queries all available auth backends, but returns immediately if any
        backend returns True. Thus, a user who has permission from a single
        auth backend is assumed to have permission in general. If an object is
        provided, permissions for this specific object are checked.
        """

        # Active superusers have all permissions.
        if self.is_active and self.is_superuser:
            return True

        # Otherwise we need to check the backends.
        return _user_has_perm(self, perm, obj)
    

    def has_module_perm(self, perm, obj=None):
        """
        To be modified during revision 1"""

        # Active superusers have all permissions.
        if self.is_active and self.is_superuser:
            return True

        # Otherwise we need to check the backends.
        return _user_has_perm(self, perm, obj)
    

    # def get_profile_picture(self, perm, obj=None):
    #     return str(self.profile_picture)[srt(self.profile_picture).index(f'profile_picture/{self.pk}/'): ]





class CurrentLocation(models.Model):
    user =models.ForeignKey(User,on_delete=models.CASCADE)
    lat = models.CharField(max_length=50, null=True, blank=True)
    lon = models.CharField(max_length=50, null=True, blank=True)
    time = models.CharField(max_length=50, null=True, blank=True)
    current_location = models.CharField(default='', max_length=100, null=True)
    current_ip = models.CharField(default='', max_length=100, null=True)





class Profile(models.Model):
    user = models.OneToOneField(User,on_delete=models.CASCADE,related_name='profile')
    location = models.CharField(max_length=50, null=True, blank=True)
    sales = models.CharField(max_length=50, null=True, blank=True)
    job_title = models.CharField(max_length=50, null=True, blank=True)
    img = models.ImageField(null=0,blank=0)
    average_ratings = models.IntegerField(default=0)
    language = models.CharField(choices=LANGUAGE_CHOICES, max_length=2, blank=True, default=LANGUAGE_FRENCH)
    currency = models.CharField(choices=CURRENCY_CHOICES, max_length=3, blank=True, default=CURRENCY_TSH)
    class Meta:
        db_table = 'auth_profile'

    # def __str__(self):
    #     return self.user.username

    # def get_url(self):
    #     url = self.url
    #     if "http://" not in self.url and "https://" not in self.url and len(self.url) > 0:  # noqa: E501
    #         url = "http://" + str(self.url)

    #     return url

    # def get_picture(self):
    #     no_picture = 'http://localhost:8123/static/img/user.png'

    #     if True:
    #         profile_pictures = str(settings.MEDIA_ROOT) + '/dp/'
    #         filename= settings.MEDIA_URL + self.user.username + '_tmp.jpg'
        
    #         if os.path.isfile(filename):  # pragma: no cover
    #             return filename
    #         else:
    #             return filename

    def get_screen_name(self):
        try:
            if self.user.get_full_name():
                return self.user.get_full_name()
            else:
                return self.user.username
        except:
            return self.user.username

    # def notify_liked(self, feed):
    #     if self.user != feed.user:
    #         Notification(notification_type=Notification.LIKED,from_user=self.user, to_user=feed.user,feed=feed).save()

    # def unotify_liked(self, feed):
    #     if self.user != feed.user:
    #         Notification.objects.filter(notification_type=Notification.LIKED,from_user=self.user, to_user=feed.user,feed=feed).delete()

    # def notify_commented(self, feed):
    #     if self.user != feed.user:
    #         Notification(notification_type=Notification.COMMENTED,from_user=self.user, to_user=feed.user,feed=feed).save()

    # def notify_also_commented(self, feed):
    #     comments = feed.get_comments()
    #     users = []
    #     for comment in comments:
    #         if comment.user != self.user and comment.user != feed.user:
    #             users.append(comment.user.pk)

    #     users = list(set(users))
    #     for user in users:
    #         Notification(notification_type=Notification.ALSO_COMMENTED,
    #                      from_user=self.user,
    #                      to_user=User(id=user), feed=feed).save()

    # def notify_favorited(self, question):
    #     if self.user != question.user:
    #         Notification(notification_type=Notification.FAVORITED,
    #                      from_user=self.user, to_user=question.user,
    #                      question=question).save()

    # def unotify_favorited(self, question):
    #     if self.user != question.user:
    #         Notification.objects.filter(
    #             notification_type=Notification.FAVORITED,
    #             from_user=self.user,
    #             to_user=question.user,
    #             question=question).delete()

    # def notify_answered(self, question):
    #     if self.user != question.user:
    #         Notification(notification_type=Notification.ANSWERED,
    #                      from_user=self.user,
    #                      to_user=question.user,
    #                      question=question).save()

    # def notify_accepted(self, answer):
    #     if self.user != answer.user:
    #         Notification(notification_type=Notification.ACCEPTED_ANSWER,
    #                      from_user=self.user,
    #                      to_user=answer.user,
    #                      answer=answer).save()

    # def unotify_accepted(self, answer):
    #     if self.user != answer.user:
    #         Notification.objects.filter(
    #             notification_type=Notification.ACCEPTED_ANSWER,
    #             from_user=self.user,
    #             to_user=answer.user,
    #             answer=answer).delete()


def create_user_profile(sender, instance, created, **kwargs):
    if created:
        Profile.objects.create(user=instance)


def save_user_profile(sender, instance, **kwargs):
    instance.profile.save()


post_save.connect(create_user_profile, sender=User)
post_save.connect(save_user_profile, sender=User)



DEFAULT_ACTIVATION_DAYS = getattr(settings, 'DEFAULT_ACTIVATION_DAYS', 7)


# class GuestEmail(models.Model):
#     email       = models.EmailField()
#     active      = models.BooleanField(default=False)
#     update      = models.DateTimeField(auto_now=True)
#     timestamp   = models.DateTimeField(auto_now_add=True)

#     def __str__(self):
#         return self.email

