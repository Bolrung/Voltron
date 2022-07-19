from rest_framework import serializers
from aphp.models import *

class BlocSerializer(serializers.ModelSerializer):
    class Meta:
        model = Bloc
        fields = '__all__'


class BlocHopitalSerializer(serializers.ModelSerializer):
    class Meta:
        model = BlocHopital
        fields = '__all__'


class BrancardSerializer(serializers.ModelSerializer):
    class Meta:
        model = Brancard
        fields = '__all__'

class  CapteurBlocSerializer(serializers.ModelSerializer):
    class Meta:
        model = CapteurBloc
        fields = '__all__'

class HopitalSerializer(serializers.ModelSerializer):
    class Meta:
        model = Hopital
        fields = '__all__'

class LitSerializer(serializers.ModelSerializer):
    class Meta:
        model = Lit
        fields = '__all__'

class MaterialSerializer(serializers.ModelSerializer):
    class Meta:
        model = Material
        fields = '__all__'

class MaterialHopitalSerializer(serializers.ModelSerializer):
    class Meta:
        model = MaterialHopital
        fields = '__all__'

class PlaceSecteurSerializer(serializers.ModelSerializer):
    class Meta:
        model = PlaceSecteur
        fields = '__all__'

class ReleveBlocSerializer(serializers.ModelSerializer):
    class Meta:
        model = ReleveBloc
        fields = '__all__'

class SecteurSerializer(serializers.ModelSerializer):
    class Meta:
        model = Secteur
        fields = '__all__'
