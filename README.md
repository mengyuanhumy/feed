# feed

环境配置
-安装Django：
	https://www.djangoproject.com/download/ 下载tar包，解压进入 Django 目录，执行python setup.py install
	或者直接使用pip install Django安装

-安装sqlparse和pytz
	pip3 install sqlparse
	pip3 install pytz

-创建Django项目（名称feedkid）
	命令行进入目录，输出django-admin startproject feedkid，查看目录中生成文件
	进入feedkid目录，运行python manage.py runserver 127.0.0.1:8000，启动服务
	在浏览器输出 127.0.0.1:8000，看到django欢迎界面，即成功