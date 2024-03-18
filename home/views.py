from django.shortcuts import render, redirect
from admin_datta.forms import RegistrationForm, LoginForm, UserPasswordChangeForm, UserPasswordResetForm, UserSetPasswordForm
from django.contrib.auth.views import LoginView, PasswordChangeView, PasswordResetConfirmView, PasswordResetView
from django.views.generic import CreateView
from django.contrib.auth import logout
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required
from authentication.models import User

from .models import *

def index(request):
  Madereva = Driver.objects.all()
  park_areas = ParkAreas.objects.all()
  number_of_park_areas = ParkAreas.objects.all().count()
  pikipiki = Driver.objects.filter(aina_ya_chombo="P")
  bajaji = Driver.objects.filter(aina_ya_chombo="B")
  users= User.objects.all()
  number_of_users_= users.count()
  idadi_ya_Vyombo: int = Madereva.count()
  asilimia_ya_Vyombo = idadi_ya_Vyombo/(idadi_ya_Vyombo if idadi_ya_Vyombo >0 else 1)*100
  idadi_ya_pikipiki: int = pikipiki.count()
  asilimia_ya_pikipiki = idadi_ya_pikipiki/(idadi_ya_Vyombo if idadi_ya_Vyombo >0 else 1)*100
  idadi_ya_bajaji: int = bajaji.count()
  asilimia_ya_bajaji = idadi_ya_bajaji/(idadi_ya_Vyombo if idadi_ya_Vyombo >0 else 1)*100
  context = {
    'segment'  : 'index',
    "Madereva" : Madereva[:10],
    'idadi_ya_Vyombo' :idadi_ya_Vyombo ,
    "asilimia_ya_Vyombo":asilimia_ya_Vyombo,
    'idadi_ya_pikipiki' :idadi_ya_pikipiki ,
    "asilimia_ya_pikipiki":asilimia_ya_pikipiki,
    'idadi_ya_bajaji' :idadi_ya_bajaji ,
    "asilimia_ya_bajaji":asilimia_ya_bajaji,
    "number_of_park_areas":number_of_park_areas,
    "number_of_users_":number_of_users_,
    "users":users
    
  }
  return render(request, "pages/index.html", context)

def tables(request):
  context = {
    'segment': 'tables'
  }
  return render(request, "pages/dynamic-tables.html", context)
