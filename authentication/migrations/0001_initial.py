# Generated by Django 4.2.9 on 2024-03-18 11:58

import authentication.models.users
from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('auth', '0012_alter_user_first_name_max_length'),
    ]

    operations = [
        migrations.CreateModel(
            name='User',
            fields=[
                ('last_login', models.DateTimeField(blank=True, null=True, verbose_name='last login')),
                ('id', models.UUIDField(default=authentication.models.users.get_token, editable=False, primary_key=True, serialize=False, unique=True)),
                ('firstname', models.CharField(blank=True, max_length=100, null=True)),
                ('lastname', models.CharField(blank=True, max_length=100, null=True)),
                ('username', models.CharField(max_length=100, null=1, unique=True)),
                ('profile_picture', models.ImageField(blank=True, null=True, upload_to='dp', verbose_name='Profile picture')),
                ('followers', models.IntegerField(null=True)),
                ('email', models.EmailField(blank=True, max_length=255, null=True, unique=True)),
                ('gender', models.CharField(blank=True, choices=[('M', 'Male'), ('F', 'Female'), ('N', 'Non Binary')], max_length=10, null=True)),
                ('is_active', models.BooleanField(default=False)),
                ('is_staff', models.BooleanField(default=True)),
                ('is_admin', models.BooleanField(default=False)),
                ('is_superuser', models.BooleanField(default=False)),
                ('hide_email', models.BooleanField(default=False)),
                ('last_seen', models.DateTimeField(auto_now=True)),
                ('password', models.CharField(blank=True, max_length=256)),
                ('date_of_birth', models.DateField(default='2000-01-01', null=True)),
                ('country', models.CharField(max_length=50, null=True)),
                ('online', models.CharField(max_length=50, null=True)),
                ('district', models.CharField(max_length=50, null=True)),
                ('city', models.CharField(max_length=50, null=True)),
                ('area', models.CharField(max_length=150, null=True)),
                ('mobile', models.CharField(default='0', max_length=20, null=True)),
                ('phone', models.CharField(default='0', max_length=20, null=True)),
                ('date_joineds', models.DateTimeField(auto_now_add=True)),
                ('pincode', models.CharField(default='', max_length=10, null=True)),
                ('current_location', models.CharField(default='', max_length=100, null=True)),
                ('known_device', models.CharField(default='', max_length=100, null=True)),
                ('facebook_account', models.URLField(blank=True, max_length=255, null=True, verbose_name='Facebook profile')),
                ('twitter_account', models.URLField(blank=True, max_length=255, null=True, verbose_name='Twitter account')),
                ('github_account', models.URLField(blank=True, max_length=255, null=True, verbose_name='GitHub profile')),
                ('linkedin_account', models.URLField(blank=True, max_length=255, null=True, verbose_name='LinkedIn profile')),
                ('groups', models.ManyToManyField(blank=True, help_text='The groups this user belongs to. A user will get all permissions granted to each of their groups.', related_name='user_set', related_query_name='user', to='auth.group', verbose_name='groups')),
                ('user_permissions', models.ManyToManyField(blank=True, related_name='user_permissions', to='auth.permission')),
            ],
            options={
                'verbose_name': 'user',
                'verbose_name_plural': 'Users',
            },
            managers=[
                ('objects', authentication.models.users.UserAccountManager()),
            ],
        ),
        migrations.CreateModel(
            name='Profile',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('avatar', models.ImageField(default='avatar.png', upload_to='avatars')),
                ('background', models.ImageField(default='background.png', upload_to='backgrounds')),
                ('last_known_location', models.CharField(max_length=50, null=True)),
                ('bio', models.TextField(default='None curently')),
                ('updated', models.DateTimeField(auto_now=True)),
                ('created', models.DateTimeField(auto_now_add=True)),
                ('blocked_user', models.ManyToManyField(blank=True, related_name='user_blocked', to='authentication.profile')),
                ('followers', models.ManyToManyField(blank=True, related_name='user_followers', to='authentication.profile')),
                ('following', models.ManyToManyField(blank=True, related_name='user_following', to='authentication.profile')),
                ('pending_request', models.ManyToManyField(blank=True, related_name='pandingRequest', to='authentication.profile')),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'auth_profile',
            },
        ),
        migrations.CreateModel(
            name='CurrentLocation',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('lat', models.CharField(blank=True, max_length=50, null=True)),
                ('lon', models.CharField(blank=True, max_length=50, null=True)),
                ('time', models.CharField(blank=True, max_length=50, null=True)),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
