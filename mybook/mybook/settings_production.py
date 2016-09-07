
DEBUG = False

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'portforest-prod',
        'USER': 'portforest',
        'PASSWORD': 'portforest',
        'HOST': 'portforest-database.cwulxggd1mp8.us-west-2.rds.amazonaws.com',
        'PORT': '3306'
    }
}


import pymysql
pymysql.install_as_MySQLdb()

