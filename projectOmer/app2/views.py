from django.shortcuts import render
from django.core.serializers import serialize
# Create your views here.
from django.http import HttpResponse
from django.shortcuts import get_object_or_404
from rest_framework.views import APIView
from rest_framework.response import Response 
from rest_framework import status
from . models import TbCity
from . models import TbCountry
from . models import TbUserStore
from . serializers import TbCitySerializer 
from . serializers import TbUserStoreSerializer


class TbCityList(APIView):

	def get(self,request):
		citys=TbCity.objects.all();
		#citys = TbCity.objects.raw("SELECT * FROM tb_city as a inner join tb_country as b on a.idcountry_id=b.idcountry;")
		serializer=TbCitySerializer(citys, many=True)
		#return Response(serialize('json', citys))
		return Response(serializer.data)
		#1er Query
		#SELECT * FROM tb_user_store as a inner join tb_user as b on a.iduser_id=b.idUser WHERE a.idstore_id=1 

		#2do 		Query
		#SELECT * FROM tb_user_store as a inner join tb_store as b on a.idstore_id=b.idStore WHERE a.iduser_id=1 

		#3er Query
		#SELECT * FROM tb_user_store as a inner join tb_store as b on a.idstore_id=b.idStore inner join tb_city as c on c.idCity=b.idcity_id WHERE a.iduser_id=1 and b.idcity_id=1 
	def post(self):

		pass


class TbUserStoreList(APIView):

	def get(self,request):
		tienda = self.request.query_params.get('tienda')
		users=TbUserStore.objects.filter(idstore=tienda);
		serializer=TbUserStoreSerializer(users, many=True)
		return Response(serializer.data)

class TbStoresUserList(APIView):

	def get(self,request):
		user = self.request.query_params.get('user')
		tiendas=TbUserStore.objects.filter(iduser=user);
		serializer=TbUserStoreSerializer(tiendas, many=True)
		return Response(serializer.data)

class TbStoresUserCityList(APIView):

	def get(self,request):
		user = self.request.query_params.get('user')
		city = self.request.query_params.get('city')
		tiendas=TbUserStore.objects.filter(iduser=user,idstore__idcity__idcity=city);
		serializer=TbUserStoreSerializer(tiendas, many=True)
		return Response(serializer.data)
