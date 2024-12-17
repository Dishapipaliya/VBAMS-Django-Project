from django.db import models

from django.contrib.auth.models import AbstractUser

class CustomUser(AbstractUser):
    USER ={
        (1,'admin'),
        (2,'driver'),
       
        
    }
    user_type = models.CharField(choices=USER,max_length=50,default=1)

    profile_pic = models.ImageField(upload_to='media/profile_pic')

class Driver(models.Model):
    admin = models.OneToOneField(CustomUser, on_delete=models.CASCADE, null=True, blank=True)
    mobilenumber = models.CharField(max_length=11, unique=True)
    driverid = models.CharField(max_length=6, unique=True)
    address =  models.CharField(max_length=250)
    joinigdate_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)




class Booking(models.Model):
    bookingnumber = models.IntegerField(default=0)
    fullname = models.CharField(max_length=250)
    email = models.EmailField(default=0)
    mobilenumber = models.CharField(max_length=11, unique=True)
    pickuplocation = models.CharField(max_length=250)
    destination = models.CharField(max_length=250)
    pickupdate = models.CharField(max_length=250)
    pickuptime = models.CharField(max_length=250)
    remark = models.CharField(max_length=250)
    status = models.CharField(max_length=250)
    assignto = models.ForeignKey(Driver, on_delete=models.CASCADE, null=True, blank=True)
    bookingdate_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

class Tracking(models.Model):
    booking_id =models.ForeignKey(Booking, on_delete=models.CASCADE, null=True, blank=True)
    remark = models.CharField(max_length=250)
    status = models.CharField(max_length=250)
    creationdate_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
from django.db import models

class Vehicle(models.Model):
    vehicle_id = models.CharField(max_length=50)
    profile_pic = models.ImageField(upload_to='vehicles/')
    username = models.CharField(max_length=50)
    vehicle_register_number = models.CharField(max_length=50)
    vehicle_model = models.CharField(max_length=50)
    vehicle_jio_location = models.CharField(max_length=100)
    vehicle_trip_id = models.CharField(max_length=50)
    vehicle_manufecture = models.CharField(max_length=50)
    vehicle_engine_number = models.IntegerField(max_length=50)

    def __str__(self):
        return self.vehicle_register_number
    



from django.db import models
from django.contrib.auth.models import User

# Model to store Vehicle Request Information
class VehicleRequest(models.Model):
    STATUS_CHOICES = [
        ('new', 'New'),
        ('approved', 'Approved'),
        ('rejected', 'Rejected'),
    ]

    # Link to the User model who is requesting the vehicle
    from django.conf import settings

    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)


    # Vehicle details
    vehicle_register_number = models.CharField(max_length=100, unique=True)
    vehicle_model = models.CharField(max_length=100)
    vehicle_manufacturer = models.CharField(max_length=100)
    vehicle_location = models.CharField(max_length=255)  # GPS or address for vehicle location
    vehicle_trip_id = models.CharField(max_length=100)
    status = models.CharField(max_length=10, choices=STATUS_CHOICES, default='new')

    # Request timestamps
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    # Other details for the vehicle request
    additional_info = models.TextField(blank=True, null=True)

    def __str__(self):
        return f"{self.vehicle_model} - {self.status} ({self.vehicle_register_number})"

    class Meta:
        verbose_name = "Vehicle Request"
        verbose_name_plural = "Vehicle Requests"
        ordering = ['-created_at']  # Orders by the latest request first

