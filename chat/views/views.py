from rest_framework import serializers
from rest_framework.decorators import api_view,permission_classes
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated,AllowAny


from django.http import HttpResponse, JsonResponse 
from django.views.decorators.csrf import csrf_exempt 
from rest_framework.parsers import JSONParser 
from ..models import *
from rest_framework import generics


class ConversationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Conversation
        fields = ['last_messages','participants','messages']
        depth = 1


class MessageSerializer(serializers.ModelSerializer):
    class Meta:
        model = Message
        fields = [
            "uid",
            "created",
            "updated",
            "message",
            "user",
            "conversation",
            "FORMAT"

        ]
        depth = 1


@csrf_exempt
@api_view(['GET'])
@permission_classes((AllowAny, ))
def conversation_list(request): 
    """ 
    List all products, or create a new product 
    """
    if request.method == 'GET': 
        product = Conversation.objects.all() 
        serializer = ConversationSerializer(product, many=True) 
        return JsonResponse(serializer.data, safe=False) 
  
    elif request.method == 'POST': 
        data = JSONParser().parse(request) 
        serializer = ConversationSerializer(data=data) 
        if serializer.is_valid(): 
            serializer.save() 
            return JsonResponse(serializer.data, status=201) 
        return JsonResponse(serializer.errors, status=400) 

@csrf_exempt
@api_view(['GET'])
@permission_classes((AllowAny, ))
def message_list(request): 
    """ 
    List all products, or create a new product 
    """
    if request.method == 'GET': 
        product = Message.objects.all() 
        serializer = MessageSerializer(product, many=True) 
        return JsonResponse(serializer.data, safe=False) 
  
    elif request.method == 'POST': 
        data = JSONParser().parse(request) 
        serializer = MessageSerializer(data=data) 
        if serializer.is_valid(): 
            serializer.save() 
            return JsonResponse(serializer.data, status=201) 
        return JsonResponse(serializer.errors, status=400) 
