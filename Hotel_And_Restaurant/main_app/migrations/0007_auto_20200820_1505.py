# Generated by Django 2.2.10 on 2020-08-20 09:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main_app', '0006_auto_20200820_1443'),
    ]

    operations = [
        migrations.AlterField(
            model_name='adminprofile',
            name='phone',
            field=models.CharField(max_length=10),
        ),
        migrations.AlterField(
            model_name='userprofile',
            name='phone',
            field=models.CharField(max_length=10),
        ),
    ]
