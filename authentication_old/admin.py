from __future__ import unicode_literals

from django.contrib import admin
from django.contrib.auth.admin import UserAdmin 
from .models import *



class MyUserAdmin(UserAdmin):
	list_display =	('id','username','email')
	# search_fields =	('username','email')
	# readonly_fields =	('username','email')

	filter_horizontal=()
	list_filter=()
	fieldsets=()
	fields = (
		'firstname',
		# 'sales',
		'customers',
		'mobile',
		'lastname',
		'username',
		'email',
		'gender',
		'is_admin',
		'is_active',
     )



admin.site.register(User, MyUserAdmin)
# admin.site.register(User)
admin.site.register(Profile)