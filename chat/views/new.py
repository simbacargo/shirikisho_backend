from rest_framework.authentication import SessionAuthentication, BasicAuthentication,TokenAuthentication
from rest_framework.permissions import IsAuthenticated,AllowAny
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework.decorators import api_view, authentication_classes,permission_classes



from rest_framework import serializers
import json

from rest_framework.decorators import api_view
from rest_framework.response import Response
import json


from django.contrib.auth.decorators import login_required
from django.contrib.auth import (
    authenticate, get_user_model, password_validation,
)
from django.http import HttpResponse, JsonResponse, HttpResponseBadRequest
from django.shortcuts import render

from decorators import ajax_required
from ..models import Message

User = get_user_model()

from typing import Any, Callable, Optional, TypeVar
from django.views.decorators.cache import cache_page
from django.core.serializers import serialize

class TransformerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Message
        depth = 0
        fields = "__all__"


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
    messages = serialize('json',messages) if messages else {}
    users_list = serialize('json',users_list) if users_list else {}
    # to_users = serialize('json',to_users) if to_users else {}
    # active_to_user = serialize('json',[active_to_user]) if active_to_user else {}
    payload={}
    payload['messages'] = messages
    payload['to_users'] = {'to_user':str(to_users)}
    payload['users_list'] = users_list
    payload['active_to_user'] = active_to_user
    print(payload)
    return HttpResponse([payload])


















# @login_required
@authentication_classes([SessionAuthentication, BasicAuthentication,])
@authentication_classes((TokenAuthentication,))
@api_view(['GET','POST'])
def inbox(request) -> Callable:
    user = User.objects.filter(username =request.user)[0].id
    to_users = Message.get_to_users(user=user)
    print("tousers: ",to_users)
    users_list = User.objects.filter(is_active=True).exclude(username=request.user).order_by('username')
    active_to_user = None
    messages = None
    if to_users:
        to_user = to_users[0]
        active_to_user = to_user['user'].username
        messages = Message.objects.filter(user=request.user,to_user=to_user['user'])
        messages.update(is_read=True)
        for to_user in to_users:
            if to_user['user'].username == active_to_user:
                to_user['unread'] = 0

    # return render(request, 'chat/base.html', {
    #     'messages': messages,
    #     'to_users': to_users,
    #     'users_list': users_list,
    #     'active': active_to_user
    #     })
    data ={
        'messages': messages,
        'to_users': to_users,
        'users_list': users_list,
        'active': active_to_user
        }

    # print(data)
    serializer = TransformerSerializer(messages, many=True)
    # print(serializer.data)
    return JsonResponse(serializer.data, safe=False)


















# @cache_page(6)
# @login_required
@authentication_classes([SessionAuthentication, BasicAuthentication,])
@authentication_classes((TokenAuthentication,))
@api_view(['GET','POST'])
def messages(request, username) -> Callable:
    print(request.COOKIES)
    to_users = Message.get_to_users(user=request.user)
    # print(to_user)
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
    
    data = {
        'messages': messages,
        'to_users': to_users,
        'users_list': users_list,
        'active': active_to_user
        }
    serializer = TransformerSerializer(messages, many=True)
    print(serializer.data)
    return JsonResponse(serializer.data, safe=False)




@login_required
@ajax_required
def delete(request) -> Callable:
    return HttpResponse()


from notifications.models import Notification
from core.encryption import ceaser_chiper


@login_required
@api_view(['POST'])
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

from ast import literal_eval
# @login_required
@api_view(['POST',"OPTIONS","HEAD"])
# @ajax_required
# @authentication_classes([SessionAuthentication, BasicAuthentication,])
# @authentication_classes((TokenAuthentication,))
@permission_classes([AllowAny])
def send(request) -> Callable:
    if request.method == 'POST':
        # to_user_username = literal_eval(request.body.decode('utf-8'))["to"]
        to_user_username = literal_eval(request.body.decode('utf-8'))["chatting_with"]
        to_user = User.objects.get(username=to_user_username)
        message = literal_eval(request.body.decode('utf-8'))["message"]
        from_user_username = literal_eval(request.body.decode('utf-8'))["user"]
        from_user = User.objects.get(username=from_user_username)
        if len(message.strip()) == 0:
            return HttpResponse()
        # message = ceaser_chiper(message,18)
        print(message,to_user,from_user)

        if from_user != to_user: msg = Message.send_message(from_user, to_user, message)
            # return render(request, 'messenger/includes/partial_message.html',
                        #   {'message': msg})
# 
        return JsonResponse({"status" : 200}, safe=False)

    else:
        return HttpResponseBadRequest()



#from_user,to_user,notification_type
@login_required
# @ajax_required
def check(request) -> Callable:
    count = Message.objects.filter(user=request.user, is_read=False).count()
    return JsonResponse(count,safe=0)



class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        depth = 0
        fields = "__all__"


# @cache_page(6)
# @api_view(['GET'])
@api_view(['POST'])
# @authentication_classes([SessionAuthentication, BasicAuthentication])
@authentication_classes((TokenAuthentication,))
@permission_classes([IsAuthenticated])
def my_chat_users(request: dict) -> Callable:
    to_users = Message.get_to_users(user=request.user)
    users_list = User.objects.filter(is_active=True).order_by('username')
    to_user = User.objects.all().order_by('username')
    # for to_user in to_users:
    #     if to_user['user'].username == username:
    #         to_user['unread'] = 0
    # data ={'messages': messages,'to_users': to_users,'users_list': users_list,'active': active_to_user}
    serializer = UserSerializer(to_user, many=True)
    print(to_user)
    print(serializer)
    return JsonResponse(serializer.data, safe=False)



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