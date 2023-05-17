from rest_framework import serializers
from .models import Book

class BookSerializer(serializers.ModelSerializer):
    class Meta:
        ## fields = ('id', 'title', 'description', 'price', 'thumbnail')
        model = Book
        fields = '__all__'