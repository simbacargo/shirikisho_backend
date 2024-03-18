# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin
from .models import *
# Register your models here.
class MessageAdmin(admin.ModelAdmin):
    list_filter = [
         "user",
         "to_user",
         "from_user",
         "thread_type"
    ]
    list_display = [
         "user",
         "to_user",
         "from_user",
         "message",
         "thread_type",
    ]

admin.site.register(Message,MessageAdmin)


app_name="chat"