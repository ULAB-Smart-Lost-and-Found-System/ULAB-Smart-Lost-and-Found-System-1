from django.shortcuts import render
from rest_framework.response import Response
from rest_framework.decorators import api_view
from .serializers import ItemSerializer
from .models import Item

# Create your views here.
@api_view(['GET'])
def itemlist(request):
    items = Item.objects.all()
    serializer = ItemSerializer(items, many=True)
    return Response(serializer.data)

@api_view(['POST'])
def addItem(request):
    serializer = ItemSerializer(data=request.data)

    if serializer.is_valid():
        serializer.save()
    return Response(serializer.data)

@api_view(['DELETE'])
def deleteItem(request, id):
    item = Item.objects.get(id=id)
    item.delete()
    return Response("Item deleted successfully!")

@api_view(['POST','PATCH'])
def updateItem(request, id):
    item = Item.objects.get(id=id)

    partial = request.method == 'PATCH'
    serializer = ItemSerializer(instance=item, data=request.data, partial=partial)

    if serializer.is_valid():
        serializer.save()
    return Response(serializer.data)