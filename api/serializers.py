from rest_framework import serializers


try:

    from home.models import *

except:
    pass 

class DriverSerializer(serializers.ModelSerializer):
    class Meta:
        try:
            model = Driver
        except:
            pass    
        fields = '__all__'


class ChamaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Chamas
class ChamasSerializer(serializers.ModelSerializer):
    class Meta:
        model = Chamas
        fields = '__all__'
        
class CountriesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Countries
        fields = '__all__'
        
class DistrictsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Districts
        fields = '__all__'
        
class DriverLoginsSerializer(serializers.ModelSerializer):
    class Meta:
        model = DriverLogins
        fields = '__all__'
        
class DriverUniformsSerializer(serializers.ModelSerializer):
    class Meta:
        model = DriverUniforms
        fields = '__all__'
        
class DriversSerializer(serializers.ModelSerializer):
    class Meta:
        model = Drivers
        fields = '__all__'
        
class LeadersPermissionsSerializer(serializers.ModelSerializer):
    class Meta:
        model = LeadersPermissions
        fields = '__all__'
        
class LeadersTypesPermissionsSerializer(serializers.ModelSerializer):
    class Meta:
        model = LeadersTypesPermissions
        fields = '__all__'
        
class LeadershipTypesSerializer(serializers.ModelSerializer):
    class Meta:
        model = LeadershipTypes
        fields = '__all__'
        
class ParkAreasSerializer(serializers.ModelSerializer):
    class Meta:
        model = ParkAreas
        depth = 1
        fields = '__all__'
        
class ParkLeadersSerializer(serializers.ModelSerializer):
    class Meta:
        model = ParkLeaders
        fields = '__all__'
        
class RegionsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Regions
        fields = '__all__'
        
class SignOtpSerializer(serializers.ModelSerializer):
    class Meta:
        model = SignOtp
        fields = '__all__'
        
class VehicleTypesSerializer(serializers.ModelSerializer):
    class Meta:
        model = VehicleTypes
        fields = '__all__'
        
class VerifiedPhonesSerializer(serializers.ModelSerializer):
    class Meta:
        model = VerifiedPhones
        fields = '__all__'
        
class WardsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Wards
        fields = '__all__'
        
