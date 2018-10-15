from django.db import models
from django.conf import settings
from django.db.models.signals import post_save

User = settings.AUTH_USER_MODEL

# Create your models here.
class Profile(models.Model):
  user = models.OneToOneField(User, on_delete=models.PROTECT)
  followers = models.ManyToManyField(User, related_name='is_following', blank=True)
  #following = models.ManyToManyField(User, related_name='following', blank=True)
  activated = models.BooleanField(default=False)
  created = models.DateTimeField(auto_now_add=True)
  updated = models.DateTimeField(auto_now=True)

  def __str__(self):
    return self.user.username

def post_save_user_receiver(sender, instance, created, *args, **kwargs):
  if created:
    profile, is_created = Profile.objects.get_or_create(user=instance)

post_save.connect(post_save_user_receiver, sender=User)