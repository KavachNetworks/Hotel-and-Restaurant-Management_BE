# Generated by Django 2.2.10 on 2020-09-05 12:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main_app', '0024_auto_20200905_1211'),
    ]

    operations = [
        migrations.AddField(
            model_name='guestprofile',
            name='status',
            field=models.BooleanField(default=True),
        ),
    ]
