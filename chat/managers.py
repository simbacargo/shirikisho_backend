from django.db.models import Manager,Count

class ThreadManager(Manager):
    def get_or_create_personal_thread(self, user1,user2):
        threads = self.get_queryset().filter(thread_type="personal")
        threads = threads.filter(user__in=[user1,user2]).distinct()
        threads = threads.annotate(u_count=Count("user")).filter(u_count=2)
        if threads.exists():
            return threads.first()
        else:
            threads=self.create(thread_type="personal")
            threads.to_user.add(user1)
            threads.to_user.add(user2)
            return threads