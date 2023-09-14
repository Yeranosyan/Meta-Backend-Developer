from django.shortcuts import render
from django.db import IntegrityError
from django.http import JsonResponse, HttpResponse
from .models import Book
from django.forms.models import model_to_dict
from django.views.decorators.csrf import csrf_exempt

# Create your views here.
@csrf_exempt

def books(request):
    if request.method == 'GET':
      books = Book.objects.all().values() 
      return JsonResponse({"books":list(books)})
    elif equest.method ==  'POST':
        title = request.POST.get('title')
        author = request.POST.get('price') 
        book = Book(
            title  = title,
            author  = author,
            price = prices
        )
    try:
         book.save()
    except IntegrityError:
     return JsonResponse({'error':'true','message':'required field missing'}, status = 400)
     return JsonResponse(model_to_dict(books), status = 201)