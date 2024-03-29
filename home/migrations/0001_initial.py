# Generated by Django 4.2.9 on 2024-03-18 12:17

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Chama',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=12)),
                ('mkoa', models.CharField(max_length=12)),
                ('wilaya', models.CharField(max_length=12)),
            ],
        ),
        migrations.CreateModel(
            name='Chamas',
            fields=[
                ('chama_id', models.CharField(max_length=225, primary_key=True, serialize=False)),
                ('jina', models.CharField(blank=True, max_length=255, null=True)),
                ('wilaya', models.CharField(blank=True, max_length=255, null=True)),
                ('mkoa', models.CharField(blank=True, max_length=255, null=True)),
                ('simu', models.CharField(blank=True, max_length=255, null=True)),
                ('email', models.CharField(blank=True, max_length=255, null=True)),
                ('status', models.CharField(blank=True, max_length=255, null=True)),
                ('chama_date', models.DateTimeField()),
            ],
            options={
                'db_table': 'chamas',
            },
        ),
        migrations.CreateModel(
            name='Countries',
            fields=[
                ('country_id', models.CharField(max_length=225, primary_key=True, serialize=False)),
                ('country_name', models.CharField(max_length=200)),
                ('country_code', models.CharField(max_length=4)),
                ('country_date', models.DateTimeField()),
            ],
            options={
                'db_table': 'countries',
            },
        ),
        migrations.CreateModel(
            name='Districts',
            fields=[
                ('district_id', models.CharField(max_length=225, primary_key=True, serialize=False)),
                ('district_name', models.CharField(max_length=200)),
                ('district_code', models.CharField(max_length=10)),
                ('district_date', models.DateTimeField()),
            ],
            options={
                'db_table': 'districts',
            },
        ),
        migrations.CreateModel(
            name='Driver',
            fields=[
                ('id', models.AutoField(null=0, primary_key=True, serialize=False)),
                ('jina', models.CharField(blank=1, max_length=100, null=1)),
                ('Mkoa', models.CharField(blank=1, max_length=100, null=1)),
                ('gender', models.CharField(blank=1, max_length=100, null=1)),
                ('aina_ya_chombo', models.CharField(blank=1, default='P', max_length=2, null=1)),
                ('mwezi_wakuzaliwa', models.CharField(blank=1, max_length=100, null=1)),
                ('tarehe_ya_kuzaliwa', models.CharField(blank=1, max_length=100, null=1)),
                ('mwaka_wakuzaliwa', models.CharField(blank=1, max_length=100, null=1)),
                ('Namba_ya_simu', models.CharField(blank=1, max_length=100, null=1)),
                ('mahausiaono', models.CharField(blank=1, max_length=100, null=1)),
                ('mkoa_wakuzaliwa', models.CharField(blank=1, max_length=100, null=1)),
                ('wilaya_yakuzaliwa', models.CharField(blank=1, max_length=100, null=1)),
                ('kata_yakuzaliwa', models.CharField(blank=1, max_length=100, null=1)),
                ('jina_yamtu_karibu', models.CharField(blank=1, max_length=100, null=1)),
                ('namba_ya_simu_yamtu_karibu', models.CharField(blank=1, max_length=100, null=1)),
                ('aina_ya_mahusiano_yamtu_karibu', models.CharField(blank=1, max_length=100, null=1)),
                ('wilaya', models.CharField(blank=1, max_length=100, null=1)),
                ('kata', models.CharField(blank=1, max_length=100, null=1)),
                ('kituo', models.CharField(blank=1, max_length=100, null=1)),
                ('tarafa', models.CharField(blank=1, max_length=100, null=1)),
                ('tarehe', models.DateTimeField(auto_now=True)),
                ('date', models.DateTimeField(auto_now_add=True)),
                ('Namba_ya_leseni', models.CharField(blank=1, max_length=100, null=1)),
                ('Namba_ya_chombo', models.CharField(blank=1, max_length=100, null=1)),
                ('picha_ya_dereva', models.ImageField(blank=1, null=1, upload_to='')),
            ],
        ),
        migrations.CreateModel(
            name='Drivers',
            fields=[
                ('driver_id', models.CharField(max_length=225, primary_key=True, serialize=False)),
                ('fname', models.CharField(max_length=100)),
                ('mname', models.CharField(max_length=100)),
                ('lname', models.CharField(max_length=100)),
                ('email', models.CharField(max_length=200)),
                ('phone', models.CharField(max_length=20, unique=True)),
                ('password', models.CharField(max_length=300)),
                ('dob', models.DateField()),
                ('gender', models.CharField(max_length=20)),
                ('relationship', models.CharField(max_length=50)),
                ('residence', models.CharField(max_length=100)),
                ('vehicle_number', models.CharField(max_length=20)),
                ('licence_number', models.CharField(max_length=50)),
                ('tin_number', models.CharField(max_length=20)),
                ('id_type', models.CharField(max_length=50)),
                ('id_number', models.CharField(max_length=50)),
                ('id_picture', models.CharField(max_length=200)),
                ('passport', models.CharField(max_length=200)),
                ('insurance', models.CharField(max_length=30)),
                ('kin_name', models.CharField(max_length=200)),
                ('kin_phone', models.CharField(max_length=20)),
                ('status', models.CharField(max_length=20)),
                ('driver_date', models.DateTimeField()),
                ('chama', models.ForeignKey(db_column='chama', on_delete=django.db.models.deletion.DO_NOTHING, to='home.chamas')),
            ],
            options={
                'db_table': 'drivers',
            },
        ),
        migrations.CreateModel(
            name='LeadershipTypes',
            fields=[
                ('type_id', models.CharField(max_length=225, primary_key=True, serialize=False)),
                ('type_name', models.CharField(max_length=100, unique=True)),
                ('type_number', models.IntegerField(unique=True)),
                ('type_date', models.DateTimeField()),
            ],
            options={
                'db_table': 'leadership_types',
            },
        ),
        migrations.CreateModel(
            name='LeadersPermissions',
            fields=[
                ('permission_id', models.CharField(max_length=225, primary_key=True, serialize=False)),
                ('permission_name', models.CharField(max_length=100)),
                ('permission_number', models.IntegerField()),
                ('perm_date', models.DateTimeField()),
            ],
            options={
                'db_table': 'leaders_permissions',
            },
        ),
        migrations.CreateModel(
            name='ParkAreas',
            fields=[
                ('park_id', models.CharField(max_length=225, primary_key=True, serialize=False)),
                ('park_name', models.CharField(max_length=200, unique=True)),
                ('park_number', models.CharField(max_length=20)),
                ('last_driver_number', models.IntegerField()),
                ('park_size', models.IntegerField()),
                ('owner', models.CharField(max_length=100)),
                ('status', models.CharField(max_length=20)),
                ('park_date', models.DateTimeField()),
            ],
            options={
                'db_table': 'park_areas',
            },
        ),
        migrations.CreateModel(
            name='SignOtp',
            fields=[
                ('otp_id', models.CharField(max_length=225, primary_key=True, serialize=False)),
                ('user_id', models.CharField(max_length=225)),
                ('phone', models.CharField(max_length=20)),
                ('otp', models.CharField(max_length=300)),
                ('status', models.CharField(max_length=50)),
                ('expire_date', models.DateTimeField()),
                ('otp_date', models.DateTimeField()),
            ],
            options={
                'db_table': 'sign_otp',
            },
        ),
        migrations.CreateModel(
            name='VehicleTypes',
            fields=[
                ('v_type_id', models.CharField(max_length=225, primary_key=True, serialize=False)),
                ('v_type_name', models.CharField(max_length=100)),
                ('weight_kg', models.IntegerField()),
                ('people_capacity', models.IntegerField()),
                ('start_cc', models.IntegerField()),
                ('end_cc', models.IntegerField()),
                ('v_type_date', models.DateTimeField()),
            ],
            options={
                'db_table': 'vehicle_types',
            },
        ),
        migrations.CreateModel(
            name='VerifiedPhones',
            fields=[
                ('pverid', models.CharField(max_length=225, primary_key=True, serialize=False)),
                ('phone', models.CharField(max_length=20)),
                ('status', models.CharField(max_length=20)),
                ('verification_date', models.DateTimeField()),
            ],
            options={
                'db_table': 'verified_phones',
            },
        ),
        migrations.CreateModel(
            name='Wards',
            fields=[
                ('ward_id', models.CharField(max_length=225, primary_key=True, serialize=False)),
                ('ward_name', models.CharField(max_length=200)),
                ('ward_code', models.CharField(max_length=10)),
                ('ward_date', models.DateTimeField()),
                ('district', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='home.districts')),
            ],
            options={
                'db_table': 'wards',
            },
        ),
        migrations.CreateModel(
            name='Regions',
            fields=[
                ('region_id', models.CharField(max_length=225, primary_key=True, serialize=False)),
                ('region_name', models.CharField(max_length=200)),
                ('region_code', models.CharField(max_length=10)),
                ('region_date', models.DateTimeField()),
                ('country', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='home.countries')),
            ],
            options={
                'db_table': 'regions',
            },
        ),
        migrations.CreateModel(
            name='ParkLeaders',
            fields=[
                ('leader_id', models.CharField(max_length=225, primary_key=True, serialize=False)),
                ('status', models.CharField(max_length=20)),
                ('leader_date', models.DateTimeField()),
                ('driver', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='home.drivers')),
                ('leader_type', models.ForeignKey(db_column='leader_type', on_delete=django.db.models.deletion.DO_NOTHING, to='home.leadershiptypes')),
                ('park', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='home.parkareas')),
            ],
            options={
                'db_table': 'park_leaders',
            },
        ),
        migrations.AddField(
            model_name='parkareas',
            name='vehicle_type',
            field=models.ForeignKey(db_column='vehicle_type', on_delete=django.db.models.deletion.DO_NOTHING, to='home.vehicletypes'),
        ),
        migrations.AddField(
            model_name='parkareas',
            name='ward',
            field=models.ForeignKey(db_column='ward', on_delete=django.db.models.deletion.DO_NOTHING, to='home.wards'),
        ),
        migrations.CreateModel(
            name='LeadersTypesPermissions',
            fields=[
                ('rels_id', models.CharField(max_length=225, primary_key=True, serialize=False)),
                ('permission', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='home.leaderspermissions')),
                ('type', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='home.leadershiptypes')),
            ],
            options={
                'db_table': 'leaders_types_permissions',
            },
        ),
        migrations.CreateModel(
            name='DriverUniforms',
            fields=[
                ('uniform_id', models.CharField(max_length=225, primary_key=True, serialize=False)),
                ('uniform_num', models.CharField(max_length=20)),
                ('validator_id', models.CharField(max_length=225)),
                ('status', models.CharField(max_length=50)),
                ('uniform_date', models.DateTimeField()),
                ('driver', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='home.drivers')),
            ],
            options={
                'db_table': 'driver_uniforms',
            },
        ),
        migrations.AddField(
            model_name='drivers',
            name='park_area',
            field=models.ForeignKey(db_column='park_area', on_delete=django.db.models.deletion.DO_NOTHING, to='home.parkareas'),
        ),
        migrations.CreateModel(
            name='DriverLogins',
            fields=[
                ('login_id', models.CharField(max_length=225, primary_key=True, serialize=False)),
                ('login_key', models.CharField(max_length=100, unique=True)),
                ('login_session', models.CharField(max_length=300)),
                ('status', models.CharField(max_length=50)),
                ('exipire_date', models.DateTimeField()),
                ('login_date', models.DateTimeField()),
                ('driver', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='home.drivers')),
            ],
            options={
                'db_table': 'driver_logins',
            },
        ),
        migrations.AddField(
            model_name='districts',
            name='region',
            field=models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='home.regions'),
        ),
    ]
