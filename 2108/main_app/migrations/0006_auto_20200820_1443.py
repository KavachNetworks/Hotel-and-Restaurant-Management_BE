# Generated by Django 2.2.10 on 2020-08-20 09:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main_app', '0005_adminprofile_bills_bookings_menuitems_orders_rooms_userprofile'),
    ]

    operations = [
        migrations.AddField(
            model_name='orders',
            name='customer_id',
            field=models.IntegerField(default=0),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='bills',
            name='customer_id',
            field=models.IntegerField(),
        ),
        migrations.AlterField(
            model_name='bookings',
            name='customer_id',
            field=models.IntegerField(),
        ),
    ]