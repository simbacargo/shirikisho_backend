from django.urls import path
from .views import *
urlpatterns = [
    path('signup', signup),
    # path('activate', activate),
]
from django.urls import path
from . import views
urlpatterns = [
  path('login', views.login,  name='login'),
  path('signup', views.signup, name='signup'),
  path('test', views.test_token, name='test'),
  path('verification', views.verification, name='verification'),

]
