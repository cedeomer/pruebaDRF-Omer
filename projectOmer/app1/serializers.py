from rest_framework import serializers
from . models import TbCountry

class TbCountrySerializer(serializers.ModelSerializer):

	class Meta:
		model=TbCountry
		fields='__all__'