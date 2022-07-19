# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Bloc(models.Model):

    type = models.CharField(unique=True, max_length=50, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'bloc'


class BlocHopital(models.Model):
    # blochopitalid = models.AutoField()
    hopitalid = models.OneToOneField('Hopital', models.DO_NOTHING, db_column='hopitalid', primary_key=True)
    blocid = models.ForeignKey(Bloc, models.DO_NOTHING, db_column='blocid')
    quantite = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'bloc_hopital'
        unique_together = (('hopitalid', 'blocid'),)


class Brancard(models.Model):
    # brancardid = models.AutoField()
    hopitalid = models.OneToOneField('Hopital', models.DO_NOTHING, db_column='hopitalid', primary_key=True)
    etage = models.CharField(max_length=50)
    quantite = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'brancard'
        unique_together = (('hopitalid', 'etage'),)


class CapteurBloc(models.Model):
    # capteurblocid = models.AutoField()
    tag = models.CharField(primary_key=True, max_length=50)
    hopitalid = models.ForeignKey('Hopital', models.DO_NOTHING, db_column='hopitalid', blank=True, null=True)
    bloc_code = models.CharField(max_length=50, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'capteur_bloc'


class Hopital(models.Model):
    name = models.CharField(unique=True, max_length=50, blank=True, null=True)
    city = models.CharField(max_length=50, blank=True, null=True)
    etage = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'hopital'


class Lit(models.Model):
    # litid = models.AutoField()
    hopitalid = models.OneToOneField(Hopital, models.DO_NOTHING, db_column='hopitalid', primary_key=True)
    etage = models.CharField(max_length=50)
    quantite = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'lit'
        unique_together = (('hopitalid', 'etage'),)


class Material(models.Model):
    type = models.CharField(unique=True, max_length=50, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'material'


class MaterialHopital(models.Model):
    # materialhopitalid = models.AutoField()
    hopitalid = models.OneToOneField(Hopital, models.DO_NOTHING, db_column='hopitalid', primary_key=True)
    materialid = models.ForeignKey(Material, models.DO_NOTHING, db_column='materialid')
    quantite = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'material_hopital'
        unique_together = (('hopitalid', 'materialid'),)


class PlaceSecteur(models.Model):
    # palceid = models.AutoField()
    hopitalid = models.OneToOneField(Hopital, models.DO_NOTHING, db_column='hopitalid', primary_key=True)
    secteurid = models.ForeignKey('Secteur', models.DO_NOTHING, db_column='secteurid')
    quantite = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'place_secteur'
        unique_together = (('hopitalid', 'secteurid'),)


class ReleveBloc(models.Model):
    # releveblocid = models.AutoField()
    tag = models.ForeignKey(CapteurBloc, models.DO_NOTHING, db_column='tag', blank=True, null=True)
    humidite = models.FloatField(blank=True, null=True)
    pression = models.FloatField(blank=True, null=True)
    qualite = models.FloatField(blank=True, null=True)
    date = models.DateField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'releve_bloc'


class Secteur(models.Model):
    type = models.CharField(unique=True, max_length=50, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'secteur'
