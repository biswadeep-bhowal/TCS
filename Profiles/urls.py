from django.urls import path
from .views import *

urlpatterns = [
    path( '', Login, name = 'Login' ),
    path( 'register/', Register, name = 'Register' ),
    path( 'login', Login, name = 'Login2' ),
    path( 'logout', Logout, name = 'Logout' ),
    path( 'profile', Profile, name = 'Profile' ),
    path( 'profile/scores', Scores, name = 'Scores' ),
    path( 'admin', Admin, name = 'Admin' ),
    path( 'admin/students', Students, name = 'Students' ),
    path( 'admin/results', Results, name = 'Results' )
]
