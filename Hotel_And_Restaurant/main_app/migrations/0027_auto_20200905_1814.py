# Generated by Django 2.2.10 on 2020-09-05 12:44

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('main_app', '0026_auto_20200905_1808'),
    ]

    operations = [
        migrations.AlterField(
            model_name='guestprofile',
            name='table',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='main_app.Tables'),
        ),
    ]
