from django.urls import path 
from . import views

urlpatterns = [
    path('all-items/', views.itemlist),
    path('add-item/', views.addItem),
    path('delete-item/<int:id>/',views.deleteItem),
    path('update-item/<int:id>/', views.updateItem),
]