from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/', include('emails_register.urls')),  # Inclui as URLs do app myapp
]