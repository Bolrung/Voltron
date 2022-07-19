from django.shortcuts import render

# Create your views here.
from rest_framework import viewsets
from aphp.models import *
from aphp.serializers import *

class BlocViewSet(viewsets.ModelViewSet):

    queryset = Bloc.objects.all()
    serializer_class = BlocSerializer


class BlocHopitalViewSet(viewsets.ModelViewSet):

    queryset = BlocHopital.objects.all()
    serializer_class = BlocHopitalSerializer


class BrancardViewSet(viewsets.ModelViewSet):

    queryset = Brancard.objects.all()
    serializer_class = BrancardSerializer

class CapteurBlocViewSet(viewsets.ModelViewSet):

    queryset = CapteurBloc.objects.all()
    serializer_class = CapteurBlocSerializer

class HopitalViewSet(viewsets.ModelViewSet):

    queryset = Hopital.objects.all()
    serializer_class = HopitalSerializer

class LitViewSet(viewsets.ModelViewSet):

    queryset = Lit.objects.all()
    serializer_class = LitSerializer


class MaterialViewSet(viewsets.ModelViewSet):

    queryset = Material.objects.all()
    serializer_class = MaterialSerializer


class MaterialHopitalViewSet(viewsets.ModelViewSet):

    queryset = MaterialHopital.objects.all()
    serializer_class = MaterialHopitalSerializer


class PlaceSecteurViewSet(viewsets.ModelViewSet):

    queryset = PlaceSecteur.objects.all()
    serializer_class = PlaceSecteurSerializer


class ReleveBlocViewSet(viewsets.ModelViewSet):

    queryset = ReleveBloc.objects.all()
    serializer_class = ReleveBlocSerializer


class SecteurViewSet(viewsets.ModelViewSet):

    queryset = Secteur.objects.all()
    serializer_class = SecteurSerializer
