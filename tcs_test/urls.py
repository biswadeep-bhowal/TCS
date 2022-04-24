from django.contrib import admin
from django.urls import path, include
from django.conf.urls.static import static

from .settings import MEDIA_ROOT, MEDIA_URL

urlpatterns = [
    path( 'admin-panel/', admin.site.urls, name = 'Admin' ),
    path( '', include( 'Profiles.urls' ) ),
    path( '', include( 'Test.urls' ) ),
        
]

urlpatterns += static( MEDIA_URL, document_root = MEDIA_ROOT )
