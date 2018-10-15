from django.shortcuts import render, get_object_or_404, redirect
from django.http import Http404
from django.contrib.auth import get_user_model

from django.views.generic import DetailView
from restaurants.models import RestaurantLocation
from menus.models import Item

User = get_user_model()

# Create your views here.
class ProfileFollowToggle(View):
  def post(self, request, *args, **kwargs):
    print(request.data)
    print(request.POST)
    return request("profile/admin/")

class ProfileDetailView(DetailView):
  template_name = 'profiles/user.html'

  def get_object(self):
    username = self.kwargs.get("username")
    if username is None:
      raise Http404
    return get_object_or_404(User, username__iexact=username, is_active=True)

  def get_context_data(self, *args, **kwargs):
    context = super(ProfileDetailView, self).get_context_data(*args, **kwargs)
    user = context['user']
    query = self.request.GET.get('q')
    items_exists = Item.objects.filter(user=user).exists()
    qs = RestaurantLocation.objects.filter(owner=user)
    qs = qs.search(query)

    if items_exists and qs.exists():
      context['locations'] = qs

    return context 