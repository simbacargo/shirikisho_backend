from django.conf.urls import url

app_name="chat"
from chat import views

urlpatterns = [
    url(r'^$', views.inbox, name='inbox'),
    url(r'^send/', views.send, name='send_message'),
    # url('send/', views.send, name='send_message'),
    url(r'^delete/$', views.delete, name='delete_message'),
    url(r'^check/$', views.check, name='check_message'),
    url(r'^(?P<username>[^/]+)/$', views.messages, name='messages'),
    url('crpc', views.create_or_return_private_chat, name='create-or-return-private-chat'),
]
