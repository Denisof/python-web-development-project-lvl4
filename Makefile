install:
	poetry install

start-dev:
	poetry run python manage.py runserver 127.0.0.1:5001

start-prod:
	export DJANGO_SETTINGS_MODULE=hello_django.settings & poetry run gunicorn --workers=4 --bind=127.0.0.1:5000 hello_django.wsgi
