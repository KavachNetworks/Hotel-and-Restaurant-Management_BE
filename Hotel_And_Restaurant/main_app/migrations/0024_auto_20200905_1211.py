# Generated by Django 3.0.6 on 2020-09-05 06:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main_app', '0023_auto_20200905_0157'),
    ]

    operations = [
        migrations.AlterField(
            model_name='foodservices',
            name='where',
            field=models.CharField(max_length=3),
        ),
    ]
