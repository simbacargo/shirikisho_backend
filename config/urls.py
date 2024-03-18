# project_name/urls.py
from django.contrib import admin
from django.urls import path
from django.urls import include, path
# from conversations import views as chat
from chat import views as chat
from jet_django.urls import jet_urls
# from afiliate_program import views as afiliate_program
urlpatterns = [
    # path('jet/', include('jet.urls')),
    # path('advanced_filters/', include('advanced_filters.urls')),
    # path('', include('admin_volt.urls')),
    path('admin/', admin.site.urls),
    # path('api/', include('home.urls')),  # Include your app's URLs
    # path("", include("home.urls")),
    path('conversation_list', chat.inbox, name='conversation_list'),
    # path("conversation_list", chat.conversation_list, name="conversation_list"),
    # path("message_list", chat.message_list, name="message_list"),
    path("inbox", chat.inbox, name="inbox"),
    path("messages/<username>", chat.messages, name="messages"),
    path("send/", chat.send, name="send"),
    path("my_chat_users", chat.my_chat_users, name="my_chat_users"),
    path("api/auth/", include("authentication.urls")),  # Include your app's URLs
    path("", include("authentication.urls")),
    # path('', include('social_django.urls', namespace='social')),
    #path('accounts/', include('allauth.urls')),
    #path('accounts/', include('allauth.urls')),
    # path('share/<username>', afiliate_program.earn_by_sharing,name="earn_by_sharing"),
     path('jet_api/', include(jet_urls)),
    
    path("api/", include("api.urls")),
    path("api/users/", include("authentication.urls")),
    path("api/auth/", include("authentication.urls")),
    path("api/acts/", include("api.urls"))
]

# Lazy-load on routing is needed
# During the first build, API is not yet generated
try:
    # urlpatterns.append( path("api/"      , include("api.urls"))    )
    urlpatterns.append( path("login/jwt/", view=obtain_auth_token) )
except:
    pass

admin.site.site_header = 'Shirikisho Administration'
admin.site.index_title = 'Shirikisho Administration'                 # default: "Site administration"
admin.site.site_title = 'Shirikisho Administration'

from django.conf import settings
from django.conf.urls.static import static

# if settings.DEBUG:
#     urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)


from django.conf import settings
from django.conf.urls.static import static

urlpatterns += [
    # ... the rest of your URLconf goes here ...
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
