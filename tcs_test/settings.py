from pathlib import Path



BASE_DIR = Path(__file__).resolve().parent.parent
SECRET_KEY = 'django-insecure-r!)ctn=1#)o7p=&i=ufo$-qeeon5zbl0d5lys7#jsa-)3n^sof'
DEBUG = True
ALLOWED_HOSTS = [ '*' ]
ROOT_URLCONF = 'tcs_test.urls'
WSGI_APPLICATION = 'tcs_test.wsgi.application'
DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'



INSTALLED_APPS = [

    'Profiles',
    'Test',
    
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
]



MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]



TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [ 'templates' ],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.template.context_processors.media',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]
X_FRAME_OPTIONS = 'SAMEORIGIN'

QUESTION_COUNT = 10     # NUMBER OF QUESTIONS PER DIFFICULTY LEVEL 


DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'tcs_test',
        'HOST' : 'localhost',
        'USER' : 'root',
        'PASSWORD' : 'admin'
    }
}



AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]



AUTH_USER_MODEL = 'Profiles.User'
AUTHENTICATION_BACKENDS = [ 'django.contrib.auth.backends.ModelBackend' ]

LANGUAGE_CODE = 'en-us'
TIME_ZONE = 'UTC'
USE_I18N = True
USE_TZ = True



STATIC_URL = 'static/'
STATIC_ROOT = BASE_DIR
STATICFILES_DIRS = [ BASE_DIR / 'static' ]

MEDIA_URL = 'media/'
MEDIA_ROOT = BASE_DIR / 'media'

LOGGIN_DIR = BASE_DIR / 'logs'