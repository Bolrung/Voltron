from rest_framework import viewsets
from aphp.models import *
from aphp.serializers import *

class AuthGroupViewSet(viewsets.ModelViewSet):

    queryset = Product.objects.all()
    serializer_class = ProductSerializer


class AuthGroupPermissionsSupplierViewSet(viewsets.ModelViewSet):

    queryset = Supplier.objects.all()
    serializer_class = SupplierSerializer

class AuthPermissionViewSet(viewsets.ModelViewSet):

    queryset = Product.objects.all()
    serializer_class = ProductSerializer

class AuthUserViewSet(viewsets.ModelViewSet):

    queryset = Product.objects.all()
    serializer_class = ProductSerializer

class AuthUserGroupsViewSet(viewsets.ModelViewSet):

    queryset = Product.objects.all()
    serializer_class = ProductSerializer

class AuthUserUserPermissionsViewSet(viewsets.ModelViewSet):

    queryset = Product.objects.all()
    serializer_class = ProductSerializer

class AuthtokenTokenViewSet(viewsets.ModelViewSet):

    queryset = Product.objects.all()
    serializer_class = ProductSerializer


