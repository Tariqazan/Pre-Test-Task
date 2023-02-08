from django.db import models
import datetime


# Create your models here.
class Venues(models.Model):
    name = models.CharField(max_length=100)
    organisation_id = models.PositiveBigIntegerField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(blank=True)

    def save(self, *args, **kwargs):
        self.updated_at = datetime.datetime.now()
        super(Venues, self).save(*args, **kwargs)

    class Meta:
        db_table = 'venues'


class VenueAisles(models.Model):
    description = models.TextField()
    warehouse_id = models.IntegerField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(blank=True)

    def save(self, *args, **kwargs):
        self.updated_at = datetime.datetime.now()
        super(Venues, self).save(*args, **kwargs)

    class Meta:
        db_table = 'venue_aisles'


class VenueRows(models.Model):
    description = models.TextField()
    warehouse_id = models.IntegerField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(blank=True)

    def save(self, *args, **kwargs):
        self.updated_at = datetime.datetime.now()
        super(Venues, self).save(*args, **kwargs)

    class Meta:
        db_table = 'venue_rows'


class Stalls(models.Model):
    venue_row = models.ForeignKey(VenueRows, on_delete=models.CASCADE)
    venue_aisle = models.ForeignKey(VenueAisles, on_delete=models.CASCADE)
    no_of_floors = models.IntegerField()
    no_of_rooms = models.IntegerField()
    position = models.CharField(max_length=50)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(blank=True)

    def save(self, *args, **kwargs):
        self.updated_at = datetime.datetime.now()
        super(Venues, self).save(*args, **kwargs)

    class Meta:
        db_table = 'stalls'
