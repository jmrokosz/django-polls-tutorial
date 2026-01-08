#!/bin/sh

python manage.py migrate --noinput
python manage.py collectstatic --noinput
gunicorn django_polls_tutorial.wsgi:application --bind 0.0.0.0:8000
