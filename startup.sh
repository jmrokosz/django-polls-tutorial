#!/bin/sh

# Set environment variables
export DJANGO_SETTINGS_MODULE=mysite.settings
export SECRET_KEY="your-secret-key"
export DEBUG=False
export ALLOWED_HOSTS="*"

# Run Django migrations (optional but recommended)
python manage.py migrate

# Start the Django app with Gunicorn
gunicorn mysite.wsgi:application --bind 0.0.0.0:8000
