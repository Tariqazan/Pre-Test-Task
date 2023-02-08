from django.views.generic import ListView
from .models import Stalls

# Create your views here.


class StallPlans(ListView):
    model = Stalls
    template_name = 'stall_plans.html'