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
GENDER_TYPES = (
    ('M', 'Male'),
    ('F', 'Female'),
    ('N', 'Non Binary'),
    )

def get_token():
    return str(uuid.uuid4())

def get_hex_token():
    return str(uuid.uuid4().hex[:20])


def get_filename_ext(filepath):
    base_name = os.path.basename(filepath)
    name, ext = os.path.splitext(base_name)
    return name, ext

# def upload_image_path(instance, filename):

#     new_filename = random.randint(1,23232335)
#     name, ext = get_filename_ext(filename)
#     final_filename = '{new_filename}{ext}'.format(new_filename=new_filename, ext=ext)
#     return "products/{new_filename}/{final_filename}".format(
#             new_filename=new_filename,
#             final_filename=final_filename
#             )



class UserAccountManager(BaseUserManager):
    use_in_migrations = True
    # def get_queryset(self):
    #     return super(UserAccountManager,self).get_queryset().filter(is_active=True)
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


class User(AbstractBaseUser,PermissionsMixin):
    id = models.UUIDField(default=get_token, editable=False, unique=True,primary_key=True)
    firstname = models.CharField(max_length=100, null=True, blank=True)
    lastname = models.CharField(max_length=100, null=True, blank=True)
    username = models.CharField(max_length=100, null=1, unique=True)
    # story= models.FileField(upload_to='videos/', null=True, verbose_name="")
    profile_picture= models.ImageField(_("Profile picture"),upload_to="dp",blank=True,null=True)
    # friends = models.IntegerField(null=True)
    followers = models.IntegerField(null=True)
    email = models.EmailField(max_length=255,unique=True,blank=True,null=True)
    gender = models.CharField(choices=GENDER_TYPES,blank=True,null=True, max_length=10)
    is_active = models.BooleanField(default=False)#designates if accounts can be used to log in
    is_staff = models.BooleanField(default=True)#is user allowed to add and manage data
    is_admin = models.BooleanField(default=False)
    is_superuser = models.BooleanField(default=False)
    hide_email = models.BooleanField(default=False)
    last_seen = models.DateTimeField(auto_now=True)
    password=models.CharField(blank=True,max_length=256)
    date_of_birth = models.DateField(default='2000-01-01', null=True)
    country = models.CharField(max_length=50, null=True)
    online  = models.CharField(max_length=50, null=True)
    district = models.CharField(max_length=50, null=True)#Pronvice
    city = models.CharField(max_length=50, null=True)
    area = models.CharField(max_length=150, null=True)
    mobile = models.CharField(max_length=20, default='0', null=True)
    phone = models.CharField(max_length=20, default='0', null=True)
    date_joineds = models.DateTimeField(auto_now_add=True)
    pincode = models.CharField(default='', max_length=10, null=True)
    current_location = models.CharField(default='', max_length=100, null=True)
    known_device = models.CharField(default='', max_length=100, null=True)
    facebook_account = models.URLField(_("Facebook profile"), max_length=255, blank=True, null=True)
    twitter_account = models.URLField(_("Twitter account"), max_length=255, blank=True, null=True)
    github_account = models.URLField(_("GitHub profile"), max_length=255, blank=True, null=True)
    linkedin_account = models.URLField(_("LinkedIn profile"), max_length=255, blank=True, null=True)
    user_permissions = models.ManyToManyField(Permission, related_name='user_permissions', blank=True)
    USERNAME_FIELD = 'username'
    objects = UserAccountManager()

    REQUIRED_FIELDS = []
    # REQUIRED_FIELDS = ["username"]
    def get_absolute_url(self):
        return "/authenticaton/{slug}/".format(slug=self.id)
        # return reverse("products:detail", kwargs={"slug": self.slug})

    class Meta:
        verbose_name = _('user')
        verbose_name_plural = _('Users')

    def __unicode__(self):
        return self.username
    def str(self):
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


    def get_profile_picture(self, perm, obj=None):
        return str(self.profile_picture)[srt(self.profile_picture).index(f'profile_picture/{self.pk}/'): ]





class CurrentLocation(models.Model):
    user =models.ForeignKey(User,on_delete=models.CASCADE)
    lat = models.CharField(max_length=50, null=True, blank=True)
    lon = models.CharField(max_length=50, null=True, blank=True)
    time = models.CharField(max_length=50, null=True, blank=True)





# class Profile(models.Model):
    # location = models.CharField(max_length=50, null=True, blank=True)
    # url = models.CharField(max_length=50, null=True, blank=True)
    # job_title = models.CharField(max_length=50, null=True, blank=True)


    # def __str__(self):
    #     return self.user.username

    # def get_url(self):
    #     url = self.url
    #     if "http://" not in self.url and "https://" not in self.url and len(self.url) > 0:  # noqa: E501
    #         url = "http://" + str(self.url)

    #     return url



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


from itertools import chain
from django.db import models
# from authentication.models import User
from random	import shuffle
# Create your models     here.

# class Profile(models.Model):
#     user = models.OneToOneField(User,on_delete=models.CASCADE)
#     avatar = models.ImageField(upload_to="avatars",default='avatar.png')
#     background = models.ImageField(upload_to="backgrounds",default='background.png')
#     last_known_location = models.CharField(max_length=50, null=True)#Pronvice
#     bio = models.TextField(default="None curently")
#     updated = models.DateTimeField(auto_now=True)
#     created = models.DateTimeField(auto_now_add=True)
#     followers = models.ManyToManyField('self',blank=True,related_name='user_followers',symmetrical=False)
#     following = models.ManyToManyField('self',blank=True,related_name='user_following',symmetrical=False)
#     pending_request = models.ManyToManyField('self',blank=True,related_name='pandingRequest',symmetrical=False)
#     blocked_user = models.ManyToManyField('self',blank=True,related_name='user_blocked',symmetrical=False)
#     def __str__(self) -> str:
#         return self.user.username


#     class Meta:
#         db_table = 'auth_profile'

#     def get_screen_name(self):
#         try:
#             if self.user.username:
#                 return self.user.username
#             else:
#                 return self.user.get_full_name()
#         except:
#             return self.user.username

#     def get_picture(self): # Abeg Dis needs fixing urgently
#         no_picture = 'http://localhost:8000/static/img/user.png'

#         if True:
#             profile_pictures = str(settings.MEDIA_ROOT) + '/dp/'
#             filename= settings.MEDIA_URL + self.user.username + '_tmp.jpg'

#             if os.path.isfile(filename):  # pragma: no cover
#                 return filename
#             else:
#                 return profile_pictures
#     @property
#     def count_posts(self):
#     	return len(self.post_set.all())
#     	# return self.post_set.all().count()
#     def get__my_posts(self):
#     	return self.post_set.all()		#This gets a set of all posts made by this user it uses reverse relationship
#     def get__following(self):
#     	return self.following.all()
#     def get_following_list(self):
#     	following_list	=[x for x in self.get__following()]
#     	return following_list		#This gets a set of all posts made by this user it uses reverse relationship

#     def get_my_and_following_list(self):
#     	users	=[x for x in self.get__following()]
#     	posts	=[]
#     	qs = None
#     	for u in users:
#     		p=Profile.objects.get(user=u)
#     		p_post = p.post_set.all()
#     		posts.append(p_post)
#     	myposts = self.post_set.all()
#     	posts.append(myposts)

#     	return sorted(chain(*posts),reverse	=True,key=lambda	obj: obj.created	 )			#This gets a set of all posts made by this user it uses reverse relationship

#     def get_proposals_following(self):
#     	profiles=Profile.objects.all().exclude(user=self.user)
#     	followers_list=[p for 	p in self.get__following	()]
#     	available = [p.user for p in profiles if p.user not in followers_list	]
#     	shuffle(available)
#     	return	available[:13]
#     def get__following_count(self):
#     	return	len(self.get__following())
#     def get__followers(self):
#     	qs = Profile.objects.all(	)
#     	followers_list	=[]
#     	for profiles	in qs:
#     		if self.user in profiles.get__following()	:
#     			followers_list.append(profiles)
#     	return	followers_list

#     def get__follower_count(self):
#     	return	len(self.get__followers())

DEFAULT_ACTIVATION_DAYS = getattr(settings, 'DEFAULT_ACTIVATION_DAYS', 7)
