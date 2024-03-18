# Application definition

DEFAULT_APPS = [
    # 'jet',
    # 'admin_volt.apps.AdminVoltConfig',
    # "unfold",  # before django.contrib.admin
    # "unfold.contrib.filters",  # optional, if special filters are needed
    # "unfold.contrib.forms",  # optional, if special form elements are needed
    # "unfold.contrib.import_export",  # optional, if django-import-export package is used
    
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    # "django.contrib.sites",

]




THIRD_PARTY_APPS = [
    # ...
    # "daphne",
    # "django_cleanup",
    # My Apps
    # "chat_app.apps.ChatAppConfig",
    # ...
    # "dj_rest_auth",
    # "dj_rest_auth.registration",
    # "debug_toolbar",
    "channels",
    # 'django_admin_search',
    # 'advanced_filters'
    # 'django_forms_bootstrap',
    # 'crispy_forms',
    # 'django_filters'
    # 'grappelli',
    # 'taggit',
    # 'bootstrap3',
]

THIRD_PARTY_APPS += [
    #"allauth",
    #"allauth.account",
    #"allauth.socialaccount",
    #"allauth.socialaccount.providers.google",
    
    # 'oauth2_provider',   
    #  'allauth.socialaccount.providers.facebook',
    # 'allauth.socialaccount.providers.twitter',
    
    "rest_framework",
    "corsheaders",
    "rest_framework.authtoken",
    "rest_framework_simplejwt",
"django_celery_results",
# 'crispy_forms',
    'jet_django'
    # 'grappelli',
    # 'taggit',
]















LOCAL_APPS = ["authentication", "home", "core", "chat", "notifications"]

INSTALLED_APPS = DEFAULT_APPS + THIRD_PARTY_APPS + LOCAL_APPS 

CRISPY_TEMPLATE_PACK = 'bootstrap4'
