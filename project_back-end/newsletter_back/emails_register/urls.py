# myapp/urls.py
from django.urls import path
from .views import  email_register

urlpatterns = [
    
    path('email-register', email_register, ),
]