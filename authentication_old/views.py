from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.contrib.auth import login, authenticate
from .forms import SignupForm
from django.contrib.sites.shortcuts import get_current_site
from django.utils.encoding import force_bytes, force_str
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
from django.template.loader import render_to_string
from core.tokens import account_activation_token
from django.core.mail import EmailMessage
from django.views.decorators.csrf import csrf_exempt
import json
from django.contrib.auth import (
    authenticate, get_user_model, password_validation,
)
User = get_user_model()
from .models import Profile

@csrf_exempt
def signup_api(request):
    if request.method == 'POST':
        body_unicode  = request.body.decode('utf-8')
        body = json.loads(body_unicode)
        username:str = body['name']
        email:str = body['email']
        mobile:int = body['phonenumber']
        password:str = body['password']
        user=User.objects.create_user(
            username=username,
            email=email,
            # is_active = 1,
            mobile=mobile,
            password=password,)
        user.save()
        return HttpResponse({'0':'k'})
    else:
        return KeyError



        
def signup(request):
    if request.method == 'POST':
        form = SignupForm(request.POST or None)
        if form.is_valid():
            print("this Form is valid")
            user = form.save(commit=False)
            user.is_active = False
            new_password = form.cleaned_data.get('password')
            user.set_password(new_password)
            user.save()
            current_site = get_current_site(request)
            message = render_to_string('authentication/acc_active_email.html', {
                'user': user,
                'domain': current_site.domain,
                'uid': urlsafe_base64_encode(force_bytes(user.pk)),
                'token': account_activation_token.make_token(user),
            })
            mail_subject = 'Activate your account In Bin Suleiman Systems.'
            to_email = form.cleaned_data.get('email')
            email = EmailMessage(mail_subject, message, to=[to_email])
            email.send()
            return HttpResponse('Please confirm your email address to complete the registration')

    else:
        if request.method == 'GET':
            form = SignupForm(request.POST or None)
            if form.is_valid()  :
                user = form.save(commit=False)
                user.is_active = False
                new_password = form.cleaned_data.get('password')
                user.set_password(new_password)
                user.save()
                current_site = get_current_site(request)
                message = render_to_string('authentication/acc_active_email.html', {
                    'user': user,
                    'domain': current_site.domain,
                    'uid': urlsafe_base64_encode(force_bytes(user.pk)),
                    'token': account_activation_token.make_token(user),
                })
                mail_subject = 'Activate your account In Bin Suleiman Systems.'
                to_email = form.cleaned_data.get('email')
                email = EmailMessage(mail_subject, message, to=[to_email])
                email.send()
                return HttpResponse('Please confirm your email address to complete the registration')

    return render(request, 'authentication/signup.html', {'form': form})
    # return render(request, 'signup.html', {'form': form})
from django.urls import reverse
def activate(request, uidb64, token: str):
    try:
        uid = force_text(urlsafe_base64_decode(uidb64))
        user = User.objects.get(pk=uid)
    except(TypeError, ValueError, OverflowError, User.DoesNotExist):
        user = None
    if user is not None and account_activation_token.check_token(user, token):
        user.is_active = True
        user.save()
        login(request, user)
        # return redirect('home')
        # return redirect(reverse('payment:process'))
        return render(request, 'authentication/thanx.html')
    else:
        return render(request, 'authentication/thanx.html')





from rest_framework import serializers
 
class userSerializer(serializers.ModelSerializer):
 
    class Meta:
        model = User
        fields =  '__all__'


from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticated,AllowAny
from rest_framework.generics import GenericAPIView
from rest_framework.response import Response
 
class userviewsets(viewsets.ModelViewSet):
    queryset = User.objects.all()
    permission_classes = [AllowAny]
    serializer_class = userSerializer


class CreateUserProfileSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('firstname', 'lastname', 'username', 'email', 'password',"mobile")
        extra_kwargs = {'password': {'write_only': True,}}

    def create(self, validated_data):
        print(validated_data)
        print(validated_data)
        user = User.objects.create(**validated_data)
        # Profile.objects.create(user=user)
        return user
    
class RegistrationAPI(GenericAPIView):
    serializer_class = CreateUserProfileSerializer
    permission_classes = [AllowAny]

    def post(self, request, *args, **kwargs):
        data: dict[str:str|int] = request.data
        username: str = data["username"]
        email: str = data["email"]
        password: str = data["password"]
        phone_number = email if "@" not in email else "0" 
        email = email if "@" in email else ""
        print(phone_number)
        serializer = self.get_serializer(data={
                "username": username,
                "email": email if email else username +"@7saba.com",
                "password": password,
                "mobile": phone_number,
        })
        serializer.is_valid(raise_exception=True)
        user = serializer.save()
        return Response({
            "user": userSerializer(user, context=self.get_serializer_context()).data,

        })