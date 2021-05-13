from django.urls import path
from . import views

urlpatterns = [
    path('', views.home),
    path('accessories/', views.accessories),
    path('gpu/', views.gpu),
    path('monitor/', views.monitor),
    path('motherboard/', views.motherboard),
    path('psu/', views.psu),
    path('ram/', views.ram),
    path('recommendedshops/', views.recommendedshops),
    path('storage/', views.storage),
    
]
