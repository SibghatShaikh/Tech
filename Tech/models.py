


# Create your models here.
# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models
from django.db import connections

class Accessories(models.Model):
    accid = models.IntegerField(db_column='AccId', primary_key=True)  # Field name made lowercase.
    model = models.CharField(db_column='Model', max_length=50)  # Field name made lowercase.
    price = models.IntegerField(db_column='Price')  # Field name made lowercase.
    shopname = models.CharField(db_column='ShopName', max_length=20, blank=True, null=True)  # Field name made lowercase.
    reviewlink = models.CharField(db_column='ReviewLink', max_length=2083, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'accessories'


class Admin(models.Model):
    fname = models.CharField(db_column='Fname', max_length=8, blank=True, null=True)  # Field name made lowercase.
    lname = models.CharField(db_column='Lname', max_length=8, blank=True, null=True)  # Field name made lowercase.
    admin_id = models.IntegerField(db_column='Admin_ID')  # Field name made lowercase.
    adminpassword = models.CharField(db_column='AdminPassword', max_length=20)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'admin'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class BenchmarkGpu(models.Model):
    gpuid = models.ForeignKey('Gpu', models.DO_NOTHING, db_column='GpuId')  # Field name made lowercase.
    benchmarkvalue = models.FloatField(db_column='BenchmarkValue', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'benchmark_gpu'


class BenchmarkProcessor(models.Model):
    processorid = models.ForeignKey('Processor', models.DO_NOTHING, db_column='ProcessorId')  # Field name made lowercase.
    benchmarkvalue = models.FloatField(db_column='BenchmarkValue', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'benchmark_processor'


class Categories(models.Model):
    serial = models.IntegerField(db_column='Serial', primary_key=True)  # Field name made lowercase.
    categoryname = models.CharField(db_column='CategoryName', max_length=30, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'categories'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Gpu(models.Model):
    gpuid = models.IntegerField(db_column='GpuId', primary_key=True)  # Field name made lowercase.
    model = models.CharField(db_column='Model', max_length=100)  # Field name made lowercase.
    price = models.IntegerField(db_column='Price')  # Field name made lowercase.
    shopname = models.CharField(db_column='ShopName', max_length=20, blank=True, null=True)  # Field name made lowercase.
    reviewlink = models.CharField(db_column='ReviewLink', max_length=2083, blank=True, null=True)  # Field name made lowercase.
    benchmarkvalue = models.FloatField(db_column='BenchmarkValue')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'gpu'


class Hddandssd(models.Model):
    driveid = models.IntegerField(db_column='DriveId', primary_key=True)  # Field name made lowercase.
    model = models.CharField(db_column='Model', max_length=50)  # Field name made lowercase.
    price = models.IntegerField(db_column='Price')  # Field name made lowercase.
    shopname = models.CharField(db_column='ShopName', max_length=20, blank=True, null=True)  # Field name made lowercase.
    reviewlink = models.CharField(db_column='ReviewLink', max_length=2083, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'hddandssd'


class Monitor(models.Model):
    monitorid = models.IntegerField(db_column='MonitorId', primary_key=True)  # Field name made lowercase.
    model = models.CharField(db_column='Model', max_length=100)  # Field name made lowercase.
    price = models.IntegerField(db_column='Price')  # Field name made lowercase.
    shopname = models.CharField(db_column='ShopName', max_length=20, blank=True, null=True)  # Field name made lowercase.
    reviewlink = models.CharField(db_column='ReviewLink', max_length=2083, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'monitor'


class Motherboard(models.Model):
    motherboardid = models.IntegerField(db_column='MotherboardId', primary_key=True)  # Field name made lowercase.
    model = models.CharField(db_column='Model', max_length=50)  # Field name made lowercase.
    price = models.IntegerField(db_column='Price')  # Field name made lowercase.
    shopname = models.CharField(db_column='ShopName', max_length=20, blank=True, null=True)  # Field name made lowercase.
    reviewlink = models.CharField(db_column='ReviewLink', max_length=2083, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'motherboard'


class Processor(models.Model):
    processorid = models.IntegerField(db_column='ProcessorId', primary_key=True)  # Field name made lowercase.
    model = models.CharField(db_column='Model', max_length=100)  # Field name made lowercase.
    price = models.IntegerField(db_column='Price')  # Field name made lowercase.
    shopname = models.CharField(db_column='ShopName', max_length=30, blank=True, null=True)  # Field name made lowercase.
    reviewlink = models.CharField(db_column='ReviewLink', max_length=2083, blank=True, null=True)  # Field name made lowercase.
    benchmarkvalue = models.FloatField(db_column='BenchmarkValue')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'processor'


class Psu(models.Model):
    psuid = models.IntegerField(db_column='PsuId', primary_key=True)  # Field name made lowercase.
    model = models.CharField(db_column='Model', max_length=100)  # Field name made lowercase.
    price = models.IntegerField(db_column='Price')  # Field name made lowercase.
    shopname = models.CharField(db_column='ShopName', max_length=20, blank=True, null=True)  # Field name made lowercase.
    reviewlink = models.CharField(db_column='ReviewLink', max_length=2083, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'psu'


class Ram(models.Model):
    ramid = models.IntegerField(db_column='RamId', primary_key=True)  # Field name made lowercase.
    model = models.CharField(db_column='Model', max_length=50)  # Field name made lowercase.
    price = models.IntegerField(db_column='Price')  # Field name made lowercase.
    shopname = models.CharField(db_column='ShopName', max_length=20, blank=True, null=True)  # Field name made lowercase.
    reviewlink = models.CharField(db_column='ReviewLink', max_length=2083, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ram'


class Recommendedshops(models.Model):
    shopid = models.IntegerField(db_column='ShopId', primary_key=True)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=25)  # Field name made lowercase.
    link = models.CharField(db_column='Link', max_length=2083, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'recommendedshops'
