# Generated by Django 3.2.25 on 2024-11-22 16:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('vbamsapp', '0007_vehicle_vehiclerequest'),
    ]

    operations = [
        migrations.AlterField(
            model_name='customuser',
            name='user_type',
            field=models.CharField(choices=[(2, 'driver'), (1, 'admin')], default=1, max_length=50),
        ),
    ]
