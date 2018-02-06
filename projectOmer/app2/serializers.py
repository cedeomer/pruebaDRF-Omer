from rest_framework import serializers
from . models import TbCountry
from . models import TbCity
from . models import TbUser
from . models import TbUserStore

class TbCountrySerializer(serializers.ModelSerializer):

	class Meta:
		model=TbCountry
		fields='__all__'


# class TbCitySerializer(serializers.ModelSerializer):  
#     namecity = serializers.CharField()
#     country = TbCountrySerializer(many=True)  # This.

#     class Meta:
#         model = TbCity
#         fields = ('namecity', 'country',)

class TbCitySerializer(serializers.ModelSerializer):

	 class Meta:
	 	model=TbCity
	 	#fields=('namecity','idcountry_id','idstatus_id')
	 	fields='__all__'

class TbUserSerializer(serializers.ModelSerializer):

	 class Meta:
	 	model=TbUser
	 	fields='__all__'

class TbUserStoreSerializer(serializers.ModelSerializer):

	 class Meta:
	 	model=TbUserStore
	 	fields='__all__'
