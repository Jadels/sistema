from django.contrib import admin
from .models import Producto,CustomUser
from .forms import UserRegisterForm
from django import forms
from django.contrib.auth.admin import UserAdmin
# Register your models here.

admin.site.register(Producto)


    
admin.site.register(CustomUser)