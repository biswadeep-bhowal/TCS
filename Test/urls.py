from django.urls import path
from .views import *


urlpatterns = [
    path( 'test/', Test, name = 'Test' ),
    path( 'instructions/', Instructions, name = 'Instructions' ),
    path( 'score/', Score, name = 'Score' ),
    path( '', Logout, name = 'Logout' ),
    path('final/',final,name='final')
]