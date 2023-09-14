from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse

def home(response):
    return HttpResponse("Welcome to Little Lemon!")

def about(response):
    return HttpResponse("About us")

def menu(response):
    return HttpResponse("Menu for Little Lemon")

def book(response):
    return HttpResponse("Make a Booking")