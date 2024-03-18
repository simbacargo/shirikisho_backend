# from anothersocialnetwork.config.asgi import application
# from channels import include

# # channel_routing = [
# #     # Include subrouting from an app with predefined path matching.
# #     include("activities.routing.websocket_routing",
# #             path=r"^/notifications/$"),
# #     include("feeds.routing.websocket_routing", path=r"^/feeds/$"),
# #     include("chat.routing.websocket_routing",
# #             path=r"^/")
# # ]
import os

from django.core.asgi import get_asgi_application

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "config.settings")
# Initialize Django ASGI application early to ensure the AppRegistry
# is populated before importing code that may import ORM models.
django_asgi_app = get_asgi_application()

# from django.conf.urls import url
from channels.routing import ProtocolTypeRouter,URLRouter
from channels.auth import AuthMiddlewareStack
from channels.security.websocket import AllowedHostsOriginValidator,OriginValidator
from django.urls import path
# from chat import consumers 
# from feeds.consumers import FeedConsumer         
# from activities.consumers import NotificationsConsumer
application=ProtocolTypeRouter({

    # Django's ASGI application to handle traditional HTTP requests
    "http": django_asgi_app,

        'websocket':AllowedHostsOriginValidator(AuthMiddlewareStack(
                        URLRouter(
                                [       
                                # path("feeds/", FeedConsumer()),
                                # path("notifications/", NotificationsConsumer()),
                                # path("ws/notifications/", NotificationsConsumer()),
                                # path('ws/chat/',consumers.ChatConsumer.as_asgi()),
                                # path('/',consumers.EchoConsumer.as_asgi()),
                                # path('',consumers.EchoConsumer.as_asgi()),
                                # path('ws/chat/<username>',consumers.ChatConsumer.as_asgi()),
                                # path('ws/chat/<username>/',consumers.ChatConsumer.as_asgi()),
                                # path('ws/<username>/',consumers.ChatConsumer.as_asgi()),
                                # path('<str:username>/',consumers.ChatConsumer.as_asgi()),
                                # url(r"^messages/(?P<username>[^/]+)/$", consumers.ChatConsumer),
                                ]
                )
                ))
})