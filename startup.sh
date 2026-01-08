#!/bin/sh

# Exit immediately if a command fails
set -e

# Apply migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput

# Start the Django app with Gunicorn
gunicorn mysite.wsgi:application --bind 0.0.0.0:8000
