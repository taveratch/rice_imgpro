from django.conf.urls import url
#from django.contrib import admin
from .import views

urlpatterns = [
   url(r'^list/$', views.list, name='list'),
#    url(r'^dia/$', views.dia, name='dia'),
#    url(r'^/?$', 'album.views.index'),(r'^static/(.*)$',
#    'django.views.static.serve', {'document_root':           
#    os.path.join(os.path.dirname(__file__), 'static')}),
]
