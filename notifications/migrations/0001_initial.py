# Generated by Django 5.0.2 on 2024-02-17 16:54

import django.db.models.deletion
from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('chat', '__first__'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Notification',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date', models.DateTimeField(auto_now_add=True)),
                ('title', models.CharField(blank=1, max_length=2000, null=1)),
                ('notification_type', models.CharField(choices=[('L', 'LIKED'), ('C', 'COMMENTED'), ('S', 'ALSO_COMMENTED'), ('F', 'FOLLOWED'), ('U', 'UNFOLLOWED'), ('U', 'REQUEST_FRIENDSHIPD'), ('U', 'ACCEPT_FRIENDSHIPD'), ('R', 'RESPONDED'), ('TEXTED', 'TEXTED')], max_length=100)),
                ('is_read', models.BooleanField(default=False)),
                ('is_new', models.BooleanField(default=False)),
                ('is_urgent', models.BooleanField(default=False)),
                ('is_recomendation', models.BooleanField(default=False)),
                ('from_user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='+', to=settings.AUTH_USER_MODEL)),
                ('message', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='chat.message')),
                ('to_user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='+', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Notification',
                'verbose_name_plural': 'Notifications',
                'ordering': ('-date',),
            },
        ),
    ]