import os
from itertools import chain
from django.db import models
from .users import User
from .users import post_save,pre_save,DEFAULT_ACTIVATION_DAYS,settings,get_token
from random	import shuffle
# Create your models     here.

class Profile(models.Model):
    user = models.OneToOneField("User",on_delete=models.CASCADE)
    avatar = models.ImageField(upload_to="avatars",default='avatar.png')
    background = models.ImageField(upload_to="backgrounds",default='background.png')
    last_known_location = models.CharField(max_length=50, null=True)#Pronvice
    bio = models.TextField(default="None curently")
    updated = models.DateTimeField(auto_now=True)
    created = models.DateTimeField(auto_now_add=True)
    followers = models.ManyToManyField('self',blank=True,related_name='user_followers',symmetrical=False)
    following = models.ManyToManyField('self',blank=True,related_name='user_following',symmetrical=False)
    pending_request = models.ManyToManyField('self',blank=True,related_name='pandingRequest',symmetrical=False)
    blocked_user = models.ManyToManyField('self',blank=True,related_name='user_blocked',symmetrical=False)
    def __str__(self) -> str:
        return self.user.username


    class Meta:
        db_table = 'auth_profile'

    def get_screen_name(self):
        try:
            if self.user.username:
                return self.user.username
            else:
                return self.user.get_full_name()
        except:
            return self.user.username

    def get_picture(self): # Abeg Dis needs fixing urgently
        no_picture = 'http://localhost:8000/static/img/user.png'

        if True:
            profile_pictures = str(settings.MEDIA_ROOT) + '/dp/'
            filename= settings.MEDIA_URL + self.user.username + '_tmp.jpg'

            if os.path.isfile(filename):  # pragma: no cover
                return filename
            else:
                return profile_pictures
    @property
    def image_url(self):
        try:
            url = self.image.url
        except:
            if self.gender == FEMALE_NUMBER:
                url = static('images/default_female_picture.png')
            elif self.gender == MALE_NUMBER:
                url = static('images/default_male_picture.png')
            else:
                url = static('images/default_profile_picture.png')

        return url


    @property
    def count_posts(self):
    	return len(self.post_set.all())
    	# return self.post_set.all().count()
    def get__my_posts(self):
    	return self.post_set.all()		#This gets a set of all posts made by this user it uses reverse relationship
    def get__following(self):
    	return self.following.all()
    def get_following_list(self):
    	following_list	=[x for x in self.get__following()]
    	return following_list		#This gets a set of all posts made by this user it uses reverse relationship

    def get_my_and_following_list(self):
    	users	=[x for x in self.get__following()]
    	posts	=[]
    	qs = None
    	for u in users:
    		p=Profile.objects.get(user=u)
    		p_post = p.post_set.all()
    		posts.append(p_post)
    	myposts = self.post_set.all()
    	posts.append(myposts)

    	return sorted(chain(*posts),reverse	=True,key=lambda	obj: obj.created	 )			#This gets a set of all posts made by this user it uses reverse relationship

    def get_proposals_following(self):
    	profiles=Profile.objects.all().exclude(user=self.user)
    	followers_list=[p for 	p in self.get__following	()]
    	available = [p.user for p in profiles if p.user not in followers_list	]
    	shuffle(available)
    	return	available[:13]
    def get__following_count(self):
    	return	len(self.get__following())
    def get__followers(self):
    	qs = Profile.objects.all(	)
    	followers_list	=[]
    	for profiles	in qs:
    		if self.user in profiles.get__following()	:
    			followers_list.append(profiles)
    	return	followers_list

    def get__follower_count(self):
    	return	len(self.get__followers())





def create_user_profile(sender, instance, created, **kwargs):
    if created:
        print(kwargs)
        Profile.objects.create(user=instance)


def save_user_profile(sender, instance, **kwargs):
    instance.profile.save()


post_save.connect(create_user_profile, sender=User)
post_save.connect(save_user_profile, sender=User)



DEFAULT_ACTIVATION_DAYS = getattr(settings, 'DEFAULT_ACTIVATION_DAYS', 7)
