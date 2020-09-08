# Generated by Django 2.2.10 on 2020-09-06 05:52

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('main_app', '0027_auto_20200905_1814'),
    ]

    operations = [
        migrations.CreateModel(
            name='RestaurantOrders',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('table_number', models.CharField(max_length=3)),
                ('menu_item', models.CharField(max_length=100)),
                ('quantity', models.IntegerField()),
                ('amount', models.FloatField()),
                ('status', models.BooleanField(default=True)),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main_app.Services')),
            ],
        ),
    ]