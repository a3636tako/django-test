
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'portforest',
        'USER': 'portforest',
        'PASSWORD': 'portforest',
        'HOST': 'localhost',
        'PORT': '3306'
    }
}



import pymysql
pymysql.install_as_MySQLdb()
