from rest_framework.decorators import api_view, authentication_classes, permission_classes
from rest_framework.authentication import SessionAuthentication, TokenAuthentication
from rest_framework.permissions import IsAuthenticated,AllowAny
from rest_framework.response import Response
from rest_framework import status
from rest_framework import serializers
from random import randint
from django.shortcuts import get_object_or_404
from rest_framework.authtoken.models import Token
from .models.users import User


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = '__all__'


@api_view(['POST',"OPTIONS"])
def login(request):
    global random_number
    random_number =randint(1000,9999)
    # user = get_object_or_404(User, mobile=request.data['phone'])
    user = User.objects.filter(phone=request.data["data"]["phone"]).first()
    if not user.check_password(request.data["data"]['password']):
        return Response("missing user", status=status.HTTP_404_NOT_FOUND)
    token, created = Token.objects.get_or_create(user=user)
    serializer = UserSerializer(user)
    send_verification_text.send_message(
        destination=request.data["data"]["phone"],message="OTP yako ni " +str(random_number))
    return Response({'token': token.key, 'user': serializer.data})


@api_view(['GET'])
@authentication_classes([SessionAuthentication, TokenAuthentication])
@permission_classes([IsAuthenticated])
def test_token(request):
    return Response("passed!")


@api_view(["POST","OPTIONS"])
def signup(req):
    print(req.data)
    serializer =UserSerializer(data=req.data)
    if serializer.is_valid():
        serializer.save()
        user = User.objects.get(username = req.data["username"])
        user.set_password(req.data["password"])
        user.save()
        token = Token.objects.create(user=user)
        return Response({"token":token.key,"user":serializer.data})
    return Response(serializer.errors)






@api_view(['GET',"POST"])
@authentication_classes([SessionAuthentication, TokenAuthentication])
@permission_classes([AllowAny])
def verification(request):
    return Response(
        {"data":"success!",
         "logKey":"cdf620a07f3a17c3ae65a31135b09eaab1ac307a",
         "logSess":"cdf620a07f3a17c3ae65a31135b09eaab1ac307a",
         "state":"success!"
         }
         )

