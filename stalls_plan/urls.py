from django.urls import path
from .views import StallPlans

urlpatterns = [
    path('', StallPlans.as_view(), name="stall_plans")
]
