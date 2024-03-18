# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Chamas(models.Model):
    # chama_id = models.CharField(primary_key=True, max_length=225, db_collation='latin1_swedish_ci')
    chama_id = models.CharField(primary_key=True, max_length=225)
    jina = models.CharField(max_length=255, blank=True, null=True)
    wilaya = models.CharField(max_length=255, blank=True, null=True)
    mkoa = models.CharField(max_length=255, blank=True, null=True)
    simu = models.CharField(max_length=255, blank=True, null=True)
    email = models.CharField(max_length=255, blank=True, null=True)
    status = models.CharField(max_length=255, blank=True, null=True)
    chama_date = models.DateTimeField()

    class Meta:
        db_table = 'chamas'


class Countries(models.Model):
    country_id = models.CharField(primary_key=True, max_length=225)
    country_name = models.CharField(max_length=200)
    country_code = models.CharField(max_length=4)
    country_date = models.DateTimeField()

    class Meta:
        db_table = 'countries'


class Districts(models.Model):
    district_id = models.CharField(primary_key=True, max_length=225)
    district_name = models.CharField(max_length=200)
    district_code = models.CharField(max_length=10)
    region = models.ForeignKey('Regions', models.DO_NOTHING)
    district_date = models.DateTimeField()

    class Meta:
        db_table = 'districts'


class DriverLogins(models.Model):
    login_id = models.CharField(primary_key=True, max_length=225)
    driver = models.ForeignKey('Drivers', models.DO_NOTHING)
    login_key = models.CharField(unique=True, max_length=100)
    login_session = models.CharField(max_length=300)
    status = models.CharField(max_length=50)
    exipire_date = models.DateTimeField()
    login_date = models.DateTimeField()

    class Meta:
        db_table = 'driver_logins'


class DriverUniforms(models.Model):
    uniform_id = models.CharField(primary_key=True, max_length=225)
    uniform_num = models.CharField(max_length=20)
    driver = models.ForeignKey('Drivers', models.DO_NOTHING)
    validator_id = models.CharField(max_length=225)
    status = models.CharField(max_length=50)
    uniform_date = models.DateTimeField()

    class Meta:
        db_table = 'driver_uniforms'


class Drivers(models.Model):
    driver_id = models.CharField(primary_key=True, max_length=225)
    fname = models.CharField(max_length=100)
    mname = models.CharField(max_length=100)
    lname = models.CharField(max_length=100)
    email = models.CharField(max_length=200)
    phone = models.CharField(unique=True, max_length=20)
    password = models.CharField(max_length=300)
    dob = models.DateField()
    gender = models.CharField(max_length=20)
    relationship = models.CharField(max_length=50)
    residence = models.CharField(max_length=100)
    park_area = models.ForeignKey('ParkAreas', models.DO_NOTHING, db_column='park_area')
    vehicle_number = models.CharField(max_length=20)
    licence_number = models.CharField(max_length=50)
    tin_number = models.CharField(max_length=20)
    id_type = models.CharField(max_length=50)
    id_number = models.CharField(max_length=50)
    id_picture = models.CharField(max_length=200)
    passport = models.CharField(max_length=200)
    insurance = models.CharField(max_length=30)
    chama = models.ForeignKey(Chamas, models.DO_NOTHING, db_column='chama')
    kin_name = models.CharField(max_length=200)
    kin_phone = models.CharField(max_length=20)
    status = models.CharField(max_length=20)
    driver_date = models.DateTimeField()

    class Meta:
        db_table = 'drivers'


class LeadersPermissions(models.Model):
    permission_id = models.CharField(primary_key=True, max_length=225)
    permission_name = models.CharField(max_length=100)
    permission_number = models.IntegerField()
    perm_date = models.DateTimeField()

    class Meta:
        db_table = 'leaders_permissions'


class LeadersTypesPermissions(models.Model):
    rels_id = models.CharField(primary_key=True, max_length=225)
    type = models.ForeignKey('LeadershipTypes', models.DO_NOTHING)
    permission = models.ForeignKey(LeadersPermissions, models.DO_NOTHING)

    class Meta:
        db_table = 'leaders_types_permissions'


class LeadershipTypes(models.Model):
    type_id = models.CharField(primary_key=True, max_length=225)
    type_name = models.CharField(unique=True, max_length=100)
    type_number = models.IntegerField(unique=True)
    type_date = models.DateTimeField()

    class Meta:
        db_table = 'leadership_types'


class ParkAreas(models.Model):
    park_id = models.CharField(primary_key=True, max_length=225)
    park_name = models.CharField(unique=True, max_length=200)
    park_number = models.CharField(max_length=20)
    last_driver_number = models.IntegerField()
    park_size = models.IntegerField()
    vehicle_type = models.ForeignKey('VehicleTypes', models.DO_NOTHING, db_column='vehicle_type')
    ward = models.ForeignKey('Wards', models.DO_NOTHING, db_column='ward')
    owner = models.CharField(max_length=100)
    status = models.CharField(max_length=20)
    park_date = models.DateTimeField()

    class Meta:
        db_table = 'park_areas'


class ParkLeaders(models.Model):
    leader_id = models.CharField(primary_key=True, max_length=225)
    leader_type = models.ForeignKey(LeadershipTypes, models.DO_NOTHING, db_column='leader_type')
    driver = models.ForeignKey(Drivers, models.DO_NOTHING)
    park = models.ForeignKey(ParkAreas, models.DO_NOTHING)
    status = models.CharField(max_length=20)
    leader_date = models.DateTimeField()

    class Meta:
        db_table = 'park_leaders'


class Regions(models.Model):
    region_id = models.CharField(primary_key=True, max_length=225)
    region_name = models.CharField(max_length=200)
    region_code = models.CharField(max_length=10)
    country = models.ForeignKey(Countries, models.DO_NOTHING)
    region_date = models.DateTimeField()

    class Meta:
        db_table = 'regions'


class SignOtp(models.Model):
    otp_id = models.CharField(primary_key=True, max_length=225)
    user_id = models.CharField(max_length=225)
    phone = models.CharField(max_length=20)
    otp = models.CharField(max_length=300)
    status = models.CharField(max_length=50)
    expire_date = models.DateTimeField()
    otp_date = models.DateTimeField()

    class Meta:
        db_table = 'sign_otp'


class VehicleTypes(models.Model):
    v_type_id = models.CharField(primary_key=True, max_length=225)
    v_type_name = models.CharField(max_length=100)
    weight_kg = models.IntegerField()
    people_capacity = models.IntegerField()
    start_cc = models.IntegerField()
    end_cc = models.IntegerField()
    v_type_date = models.DateTimeField()

    class Meta:
        db_table = 'vehicle_types'


class VerifiedPhones(models.Model):
    pverid = models.CharField(primary_key=True, max_length=225)
    phone = models.CharField(max_length=20)
    status = models.CharField(max_length=20)
    verification_date = models.DateTimeField()

    class Meta:
        db_table = 'verified_phones'


class Wards(models.Model):
    ward_id = models.CharField(primary_key=True, max_length=225)
    ward_name = models.CharField(max_length=200)
    ward_code = models.CharField(max_length=10)
    district = models.ForeignKey(Districts, models.DO_NOTHING)
    ward_date = models.DateTimeField()

    class Meta:
        db_table = 'wards'
