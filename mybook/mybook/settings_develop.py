
DEBUG = True

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'portforest',
        'USER': 'portforest',
        'PASSWORD': 'portforest',
        'HOST': 'portforest-database.cwulxggd1mp8.us-west-2.rds.amazonaws.com',
        'PORT': '3306'
    }
}


import pymysql
pymysql.install_as_MySQLdb()

LOGGING = {
    'version': 1,   # これを設定しないと怒られる
    'formatters': { # 出力フォーマットを文字列形式で指定する
        'all': {    # 出力フォーマットに`all`という名前をつける
            'format': '\t'.join([
                "[%(levelname)s]",
                "asctime:%(asctime)s",
                "module:%(module)s",
                "message:%(message)s",
                "process:%(process)d",
                "thread:%(thread)d",
            ])
        },
    },
    'handlers': {  # ログをどこに出すかの設定
        'file': {  # どこに出すかの設定に名前をつける `file`という名前をつけている
            'level': 'INFO',  # DEBUG以上のログを取り扱うという意味
            'class': 'logging.FileHandler',  # ログを出力するためのクラスを指定
            'filename': '/var/log/django/mybook.log',  # どこに出すか
            'formatter': 'all',  # どの出力フォーマットで出すかを名前で指定
        }
    },
    'loggers': {  # どんなloggerがあるかを設定する
        'command': {  # commandという名前のloggerを定義
            'handlers': ['file'],  # 先述のfile, consoleの設定で出力
            'level': 'INFO',
        },
    },
}
