# -*- coding: utf-8 -*-
from django.db import models
from easy_thumbnails.fields import ThumbnailerImageField



class Document(models.Model):
    docfile = models.FileField(upload_to='documents/%Y/%m/%d')

class Profile(models.Model):
    user = models.OneToOneField('auth.User')
    photo = ThumbnailerImageField(upload_to='documents/%Y/%m/%d', blank=True)
