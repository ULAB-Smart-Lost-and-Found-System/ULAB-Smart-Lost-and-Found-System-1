from django.db import models

# Create your models here.
class Item(models.Model):
    name = models.CharField(max_length=50)
    description = models.TextField(max_length=200)
    picture = models.ImageField(upload_to="media_images/")
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name 