from .base import *
from .installed_applications import *
from datetime import timedelta

MIDDLEWARE = ['corsheaders.middleware.CorsMiddleware']+MIDDLEWARE

ROOT_URLCONF = 'config.urls'

WSGI_APPLICATION = 'config.wsgi.application'
ASGI_APPLICATION = 'config.asgi.application'

 
# Password validation
# https://docs.djangoproject.com/en/3.1/ref/settings/#auth-password-validators

# AUTH_PASSWORD_VALIDATORS = [
    # {'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',},
    # {'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',},
    # {'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',},
    # {'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',},
# ]

# Passwords
# PASSWORD_HASHERS = [
#     'django.contrib.auth.hashers.Argon2PasswordHasher',
#     'django.contrib.auth.hashers.PBKDF2PasswordHasher',
#     'django.contrib.auth.hashers.PBKDF2SHA1PasswordHasher',
#     'django.contrib.auth.hashers.BCryptSHA256PasswordHasher',
#     'django.contrib.auth.hashers.BCryptPasswordHasher',
# ]
# SESSION_  ENGINE = 'django.contrib.sessions.backends.cache'
# Security
ALLOWED_HOSTS = [
    "localhost",
    "0.0.0.0",
    "127.0.0.1",
    '*'
]

# Users & Authentication
# AUTH_USER_MODEL='authentication.User'

# Celery
# INSTALLED_APPS += ['taskapp.celery.CeleryAppConfig']
CORS_ORIGIN_ALLOW_ALL = True

CORS_ALLOW_METHODS = [ 'DELETE', 'GET', 'OPTIONS', 'PATCH', 'POST', 'PUT', ]
CORS_ALLOW_HEADERS = [ 'accept', 'accept-encoding', 'authorization', 'content-type', 'dnt', 'origin', 'user-agent',
                       'x-csrftoken', 'x-requests']


#  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  
#  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  Django REST Framework #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  # 
# #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  
#  
REST_FRAMEWORK = {
    # 'DEFAULT_RENDERER_CLASSES': (
        # 'rest_framework.renderers.JSONRenderer',
    # ),
    'DEFAULT_AUTHENTICATION_CLASSES': (
        'rest_framework.authentication.TokenAuthentication',
        'rest_framework.authentication.BasicAuthentication',
        'rest_framework.authentication.SessionAuthentication',
        'rest_framework_simplejwt.authentication.JWTAuthentication',
    ),
     'DEFAULT_PERMISSION_CLASSES':(
                'rest_framework.permissions.IsAuthenticated',
    ),
    'DEFAULT_PAGINATION_CLASS': 'rest_framework.pagination.LimitOffsetPagination',
    'PAGE_SIZE': 100,


'DEFAULT_PARSER_CLASSES': (
    'rest_framework.parsers.JSONParser',
    'rest_framework.parsers.FormParser',
    'rest_framework.parsers.MultiPartParser',
),

}

SIMPLE_JWT = {
    "ACCESS_TOKEN_LIFETIME": timedelta(minutes=60*18),
    "REFRESH_TOKEN_LIFETIME": timedelta(days=8),
    "ROTATE_REFRESH_TOKENS": 1,
    "BLACKLIST_AFTER_ROTATION": False,
    "UPDATE_LAST_LOGIN": False,

    "ALGORITHM": "HS256",
    "SIGNING_KEY": SECRET_KEY,
    "VERIFYING_KEY": "",
    "AUDIENCE": None,
    "ISSUER": None,
    "JSON_ENCODER": None,
    "JWK_URL": None,
    "LEEWAY": 0,

    "AUTH_HEADER_TYPES": ("Bearer",),
    "AUTH_HEADER_NAME": "HTTP_AUTHORIZATION",
    "USER_ID_FIELD": "id",
    "USER_ID_CLAIM": "user_id",
    "USER_AUTHENTICATION_RULE": "rest_framework_simplejwt.authentication.default_user_authentication_rule",

    "AUTH_TOKEN_CLASSES": ("rest_framework_simplejwt.tokens.AccessToken",),
    "TOKEN_TYPE_CLAIM": "token_type",
    "TOKEN_USER_CLASS": "rest_framework_simplejwt.models.TokenUser",

    "JTI_CLAIM": "jti",

    "SLIDING_TOKEN_REFRESH_EXP_CLAIM": "refresh_exp",
    "SLIDING_TOKEN_LIFETIME": timedelta(minutes=5),
    "SLIDING_TOKEN_REFRESH_LIFETIME": timedelta(days=1),

    "TOKEN_OBTAIN_SERIALIZER": "rest_framework_simplejwt.serializers.TokenObtainPairSerializer",
    "TOKEN_REFRESH_SERIALIZER": "rest_framework_simplejwt.serializers.TokenRefreshSerializer",
    "TOKEN_VERIFY_SERIALIZER": "rest_framework_simplejwt.serializers.TokenVerifySerializer",
    "TOKEN_BLACKLIST_SERIALIZER": "rest_framework_simplejwt.serializers.TokenBlacklistSerializer",
    "SLIDING_TOKEN_OBTAIN_SERIALIZER": "rest_framework_simplejwt.serializers.TokenObtainSlidingSerializer",
    "SLIDING_TOKEN_REFRESH_SERIALIZER": "rest_framework_simplejwt.serializers.TokenRefreshSlidingSerializer",
}




# Database
# https://docs.djangoproject.com/en/3.1/ref/settings/#databases

DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.postgresql_psycopg2",
        "NAME": "_7saba",
        "USER": "api_server",
        "PASSWORD": "~,bxs!v9r^x*Ak)",
        "HOST": "localhost",
        "PORT": "5432",
    }
}


# DATABASES = {
#     "default": {
#         "ENGINE": "django.db.backends.postgresql_psycopg2",
#         "NAME": env('NAME'),
#         "USER": env('USER'),
#         "PASSWORD": env('PASSWORD'),
#         "HOST": "localhost",
#         "PORT": "5432",
#     }
#     }

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'
CACHES = {
    'default': {
        'BACKEND': 'django.core.cache.backends.filebased.FileBasedCache',
        'LOCATION': BASE_DIR/'../caches',
        'TIMEOUT': 6,
        'OPTIONS': {
            'SERIALIZER': 'django_redis.serializers.json.JSONSerializer',
            'MAX_ENTRIES': 0
        }
    }
}

CACHES = {
    "default": {
        "BACKEND": "django_redis.cache.RedisCache",
        "LOCATION": "redis://127.0.0.1:6379/1",
        "OPTIONS": {
            "CLIENT_CLASS": "django_redis.client.DefaultClient",
        }
    }
}
CACHE_MIDDLEWARE_ALIAS = 'default'  # The cache alias to use for storage and 'default' is **local-memory cache**.
# CACHE_MIDDLEWARE_SECONDS = '600'    # number of seconds before each page is cached
CACHE_MIDDLEWARE_KEY_PREFIX = ''    # This is used when cache is shared across multiple sites that use the same Django instance. You use an empty string if you don’t care for it.

from decouple import config

GOOGLE_OAUTH2_CLIENT_ID =config('GOOGLE_OAUTH2_CLIENT_ID') 
GOOGLE_OAUTH2_CLIENT_SECRET =env('GOOGLE_OAUTH2_CLIENT_SECRET') 
GOOGLE_OAUTH2_PROJECT_ID =env('GOOGLE_OAUTH2_PROJECT_ID') 

# CHANNEL_LAYERS = {
#     "default": {
#         "BACKEND": "channels_redis.core.RedisChannelLayer",
#         "CONFIG": {
#             "hosts": [("localhost", 6379)],
#         },
#     },
# }


# Celery Configuration
CELERY_TIMEZONE = "Africa/Nairobi"
CELERY_ENABLE_UTC = True
CELERY_BROKER_URL = "pyamqp://guest@localhost:5672"
CELERY_RESULT_BACKEND = "redis://localhost:6379"
CELERY_BROKER_URL = 'redis://localhost:6379/0'
CELERY_RESULT_BACKEND = 'redis://localhost:6379/0'

AUTHENTICATION_BACKENDS = [
    "django.contrib.auth.backends.ModelBackend",
    #"allauth.account.auth_backends.AuthenticationBackend",
]


SOCIALACCOUNT_PROVIDERS = {
    "google": {
        "APP": {
            "client_id": "342416733055-ief7ja3p1id3j7osl462shd2oinmemh7.apps.googleusercontent.com",  
            "secret": "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",
            "key": "",                               # leave empty
        },
        "SCOPE": [
            "profile",
            "email",
        ],
        "AUTH_PARAMS": {
            "access_type": "online",
        },
        "VERIFIED_EMAIL": True,
    },
    'facebook': {
        'METHOD': 'oauth2',  # Set to 'js_sdk' to use the Facebook connect SDK
        'SDK_URL': '//connect.facebook.net/{locale}/sdk.js',
        'SCOPE': ['email', 'public_profile'],
        'AUTH_PARAMS': {'auth_type': 'reauthenticate'},
        'INIT_PARAMS': {'cookie': True},
        'FIELDS': [
            'id',
            'first_name',
            'last_name',
            'middle_name',
            'name',
            'name_format',
            'picture',
            'short_name'
        ],
        'EXCHANGE_TOKEN': True,
        'LOCALE_FUNC': 'path.to.callable',
        'VERIFIED_EMAIL': False,
        'VERSION': 'v13.0',
        'GRAPH_API_URL': 'https://graph.facebook.com/v13.0',
    }
}
ACCOUNT_DEFAULT_HTTP_PROTOCOL = 'https'
SITE_ID = 1


# Users & Authentication
AUTH_USER_MODEL='authentication.User'
ALLOWED_SIGNUP_DOMAINS ="*"

JET_THEMES = [
    {
        'theme': 'default', # theme folder name
        'color': '#47bac1', # color of the theme's button in user menu
        'title': 'Default' # theme title
    },
    {
        'theme': 'green',
        'color': '#44b78b',
        'title': 'Green'
    },
    {
        'theme': 'light-green',
        'color': '#2faa60',
        'title': 'Light Green'
    },
    {
        'theme': 'light-violet',
        'color': '#a464c4',
        'title': 'Light Violet'
    },
    {
        'theme': 'light-blue',
        'color': '#5EADDE',
        'title': 'Light Blue'
    },
    {
        'theme': 'light-gray',
        'color': '#000',
        'title': 'Light Gray'
    }
]
JET_SIDE_MENU_COMPACT = True
JET_DEFAULT_THEME = 'light-gray'

# You have other color options such as:

    # default

    # green

    # light-violet

    # light-green

    # light-blue

    # light-gray
# print(DATABASES )
logging = {
   'version': 1,
   'disable_existing_loggers': False,
   'handlers': {
      'file': {
         'level': 'DEBUG',
         'class': 'logging.FileHandler',
         'filename': './logging/debug.log',
      },
   },
   'loggers': {
      'django': {
         'handlers': ['file'],
         'level': 'DEBUG',
         'propagate': True,
      },
   },
}


STATIC_ROOT = BASE_DIR/"../stattic"
# SESSION_ENGINE = 'redis_sessions.session'
SESSION_ENGINE = "django.contrib.sessions.backends.cache"
SESSION_CACHE_ALIAS = "default"
SESSION_COOKIE_AGE = 3600*24*2  # One hour session timeout
import os
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
    }
}



ROOT_DIR = environ.Path(__file__) - 3
APPS_DIR = ROOT_DIR.path('gute')

# Media
MEDIA_ROOT = str(APPS_DIR('../media'))
MEDIA_URL = '/media/'