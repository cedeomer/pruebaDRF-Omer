# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class TbCity(models.Model):
    idcity = models.AutoField(db_column='idCity', primary_key=True)  # Field name made lowercase.
    namecity = models.CharField(db_column='nameCity', max_length=200, blank=True, null=True)  # Field name made lowercase.
    description = models.TextField(blank=True, null=True)
    idstatus = models.IntegerField(db_column='idStatus', blank=True, null=True)  # Field name made lowercase.
    idcountry = models.IntegerField(db_column='idCountry', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tb_city'


class TbCountry(models.Model):
    idcountry = models.AutoField(db_column='idCountry', primary_key=True)  # Field name made lowercase.
    namecountry = models.CharField(db_column='nameCountry', max_length=200, blank=True, null=True)  # Field name made lowercase.
    description = models.TextField(blank=True, null=True)
    idstatus = models.IntegerField(db_column='idStatus', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tb_country'


class TbStatus(models.Model):
    idstatus = models.AutoField(db_column='idStatus', primary_key=True)  # Field name made lowercase.
    status = models.CharField(max_length=200, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tb_status'


class TbStore(models.Model):
    idstore = models.AutoField(db_column='idStore', primary_key=True)  # Field name made lowercase.
    namestore = models.CharField(db_column='nameStore', max_length=200, blank=True, null=True)  # Field name made lowercase.
    description = models.TextField(blank=True, null=True)
    address = models.CharField(max_length=500, blank=True, null=True)
    phonestore = models.CharField(db_column='phoneStore', max_length=200, blank=True, null=True)  # Field name made lowercase.
    mailstore = models.CharField(db_column='mailStore', max_length=200, blank=True, null=True)  # Field name made lowercase.
    website = models.CharField(max_length=200, blank=True, null=True)
    lat = models.CharField(max_length=200, blank=True, null=True)
    lon = models.CharField(max_length=200, blank=True, null=True)
    dateregister = models.DateTimeField(db_column='dateRegister', blank=True, null=True)  # Field name made lowercase.
    idcity = models.IntegerField(db_column='idCity', blank=True, null=True)  # Field name made lowercase.
    idstatus = models.IntegerField(db_column='idStatus', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tb_store'


class TbUser(models.Model):
    iduser = models.AutoField(db_column='idUser', primary_key=True)  # Field name made lowercase.
    username = models.CharField(db_column='userName', unique=True, max_length=200, blank=True, null=True)  # Field name made lowercase.
    mailuser = models.CharField(db_column='mailUser', max_length=200, blank=True, null=True)  # Field name made lowercase.
    firstname = models.CharField(db_column='firstName', max_length=200, blank=True, null=True)  # Field name made lowercase.
    lastname = models.CharField(db_column='lastName', max_length=200, blank=True, null=True)  # Field name made lowercase.
    dni = models.CharField(unique=True, max_length=200, blank=True, null=True)
    address = models.CharField(max_length=500, blank=True, null=True)
    dateofbirth = models.DateTimeField(db_column='dateOfBirth', blank=True, null=True)  # Field name made lowercase.
    phoneuser = models.CharField(db_column='phoneUser', max_length=200, blank=True, null=True)  # Field name made lowercase.
    idstatus = models.IntegerField(db_column='idStatus', blank=True, null=True)  # Field name made lowercase.
    passuser = models.CharField(db_column='passUser', max_length=255, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tb_user'


class TbUserStore(models.Model):
    iduserstore = models.AutoField(db_column='idUserStore', primary_key=True)  # Field name made lowercase.
    iduser = models.IntegerField(db_column='idUser', blank=True, null=True)  # Field name made lowercase.
    idstore = models.IntegerField(db_column='idStore', blank=True, null=True)  # Field name made lowercase.
    idstatus = models.IntegerField(db_column='idStatus', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tb_user_store'
