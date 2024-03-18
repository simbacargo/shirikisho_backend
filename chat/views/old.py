import json

from django.contrib.auth.decorators import login_required
from django.contrib.auth import (
    authenticate, get_user_model, password_validation,
)
from django.http import HttpResponse, HttpResponseBadRequest
from django.shortcuts import render

from decorators import ajax_required
from chat.models import Message

User = get_user_model()

from typing import Any, Callable, Optional, TypeVar
from django.views.decorators.cache import cache_page
@login_required
def inbox(request) -> Callable:
    to_users = Message.get_to_users(user=request.user)
    users_list = User.objects.filter(
        is_active=True).exclude(username=request.user).order_by('username')
    active_to_user = None
    messages = None
    if to_users:
        to_user = to_users[0]
        active_to_user = to_user['user'].username
        messages = Message.objects.filter(user=request.user,
                                          to_user=to_user['user'])
        messages.update(is_read=True)
        for to_user in to_users:
            if to_user['user'].username == active_to_user:
                to_user['unread'] = 0

    return render(request, 'chat/base.html', {
        'messages': messages,
        'to_users': to_users,
        'users_list': users_list,
        'active': active_to_user
        })


@cache_page(6)
@login_required
def messages(request, username) -> Callable:
    to_users = Message.get_to_users(user=request.user)
    users_list = User.objects.filter(is_active=True).order_by('username')
    active_to_user = username
    messages = Message.objects.filter(user=request.user,)
    messages.update(is_read=True)
    for to_user in to_users:
        if to_user['user'].username == username:
            to_user['unread'] = 0

    # return render(request, 'messenger/inbox.html', {
    #     'messages': messages,
    #     'to_users': to_users,
    #     'users_list': users_list,
    #     'active': active_to_user
    #     })
    return render(request, 'chat/base.html', {
        'messages': messages,
        'to_users': to_users,
        'users_list': users_list,
        'active': active_to_user
        })


@login_required
@ajax_required
def delete(request) -> Callable:
    return HttpResponse()
from notifications.models import Notification
from core.encryption import ceaser_chiper
@login_required
# @ajax_required
def send(request) -> Callable:
    print(request)
    if request.method == 'POST':
        from_user = request.user
        to_user_username = request.POST.get('to')
        to_user = User.objects.get(username=to_user_username)
        message = request.POST.get('message')
        message = ceaser_chiper(message,18)
        if len(message.strip()) == 0:
            return HttpResponse()

        if from_user != to_user:
            msg = Message.send_message(from_user, to_user, message)
            Notification.object.create()
            return render(request, 'messenger/includes/partial_message.html',
                          {'message': msg})

        return HttpResponse()

    else:
        return HttpResponseBadRequest()

#from_user,to_user,notification_type
@login_required
@ajax_required
def check(request) -> Callable:
    count = Message.objects.filter(user=request.user, is_read=False).count()
    return HttpResponse(count)




# Ajax call to return a private chatroom or create one if does not exist
def create_or_return_private_chat(request, *args, **kwargs):
	user1 = request.user
	payload = {}
	if user1.is_authenticated:
		if request.method == "POST":
			user2_id = request.POST.get("user2_id")
			try:
				user2 = Account.objects.get(pk=user2_id)
				chat = find_or_create_private_chat(user1, user2)
				print("Successfully got the chat")
				payload['response'] = "Successfully got the chat."
				payload['chatroom_id'] = chat.id
			except Account.DoesNotExist:
				payload['response'] = "Unable to start a chat with that user."
	else:
		payload['response'] = "You can't start a chat if you are not authenticated."
	return HttpResponse(json.dumps(payload), content_type="application/json")


