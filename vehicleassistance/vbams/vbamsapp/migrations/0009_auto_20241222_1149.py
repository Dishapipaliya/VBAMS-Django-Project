# Generated by Django 3.2.25 on 2024-12-22 16:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('vbamsapp', '0008_alter_customuser_user_type'),
    ]

    operations = [
        migrations.AlterField(
            model_name='vehicle',
            name='vehicle_engine_number',
            field=models.IntegerField(max_length=50),
        ),
        migrations.AlterField(
            model_name='vehicle',
            name='vehicle_manufecture',
            field=models.CharField(max_length=50),
        ),
    ]
