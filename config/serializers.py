from rest_framework import serializers
from aphp.models import *

class AuthGroupSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = AuthGroup
        fields = ('name')


class AuthGroupPermissionsSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = AuthGroupPermissions
        fields = ('group', 'permission')


class AuthPermissionSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = AuthPermission
        fields = ('content_type', 'codename','name')
