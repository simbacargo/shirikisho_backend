from rest_framework import serializers
from django.contrib.auth.decorators import login_required
from django.http import HttpResponse,JsonResponse
from django.shortcuts import render

from .models import Notification
from decorators import ajax_required
from django.http import HttpResponse,HttpRequest
from rest_framework.decorators import api_view

class TransformerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Notification
        depth = 0
        fields = "__all__"


@login_required
@api_view(['GET','POST'])
def notifications(request: HttpRequest) -> HttpResponse:
    user = request.user
    notifications = Notification.objects.all()
    unread = Notification.objects.filter(is_read=False)
    for notification in unread:
        notification.is_read = 0  # pragma: no cover
        notification.save()  # pragma: no cover
    payload={'notifications': notifications}
    serializer = TransformerSerializer(notifications, many=True)

    return JsonResponse(serializer.data, safe=False)
    # return HttpResponse(serializer.data
    # , content_type="application/json"
    # )


@login_required
# @ajax_required
def last_notifications(request: HttpRequest) -> HttpResponse:
    user = request.user
    notifications = Notification.objects.filter(to_user=user,
                                                is_read=False)[:5]
    for notification in notifications:
        notification.is_read = True  # pragma: no cover
        notification.save()  # pragma: no cover
    serializer = TransformerSerializer(notifications, many=True)

    return JsonResponse(serializer.data, safe=False)

@login_required
# @ajax_required
def check_notifications(request: HttpRequest) -> HttpResponse:
    user = request.user
    notifications = Notification.objects.filter(to_user=user,
                                                is_read=False)[:5]
    return  JsonResponse({'count':len(notifications)}, safe=False)