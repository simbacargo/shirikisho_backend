from django.urls import path, include
from rest_framework import routers
from django.urls import path
from .viewsets import RefreshViewSet,RegistrationViewSet,LoginViewSet #,GoogleLogin,GoogleLoginView
from rest_framework_simplejwt.views import TokenRefreshView
from rest_framework.routers import SimpleRouter
# from .fb_login import FacebookLogin,ImplicitGoogleLogin,GoogleLogin
from django.urls import path
from .views import *
urlpatterns = [
    path('signup', signup),
    path('activate', activate),
    path('RegistrationAPI/', RegistrationAPI.as_view()),
    path('userviewsets', userviewsets.as_view({'get': 'list'})),
    # path(r'^rest-auth/facebook/$', FacebookLogin.as_view(), name='fb_login')
    # path("google/", GoogleLoginView.as_view(), name="google_login"),
    # path('rest-auth/facebook', FacebookLogin.as_view(), name='fb_login'),
    # path('rest-auth/google', GoogleLogin.as_view(), name='google_login'),
    # path('rest-auth/implicit_google', ImplicitGoogleLogin.as_view(), name='google_login'),
    # path('dj-rest-auth/', include('dj_rest_auth.urls')),
    # path('dj-rest-auth/registration/', include('dj_rest_auth.registration.urls'))
]

router = routers.DefaultRouter()


routes = SimpleRouter()


# AUTHENTICATION
routes.register(r'login', LoginViewSet, basename='auth-login')
routes.register(r'login/', LoginViewSet, basename='auth-login')
routes.register(r'register', RegistrationViewSet, basename='auth-register')
routes.register(r'refresh', RefreshViewSet, basename='auth-refresh')



urlpatterns += [
    *routes.urls
]