import os
from celery import Celery

# Set the default Django settings module for the 'celery' program.
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'config.settings')

app = Celery('ChatApp')

# Using a string here means the worker doesn't have to serialize
# the configuration object to child processes.
# - namespace='CELERY' means all celery-related configuration keys
#   should have a `CELERY_` prefix.
app.config_from_object('django.conf:settings', namespace='CELERY')

# Load task modules from all registered Django apps.
app.autodiscover_tasks()
import dotenv

env_file = os.path.join(os.path.dirname(os.path.dirname(os.path.realpath(__file__))), '.env')
# print(env_file)
dotenv.load_dotenv(env_file)

@app.task(bind=True, ignore_result=True)
def send_some_notification(self):
    print(f'Request: {self.request!r}')

@app.task(bind=True, ignore_result=True)
def check_for_nudity(self):
    print(f'Request: {self.request!r}')

@app.task(bind=True, ignore_result=True)
def rank_the_product(self):
    print(f'Request: {self.request!r}')
from celery import shared_task

@shared_task
def add(x, y):
    return x + y