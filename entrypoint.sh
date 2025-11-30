#!/bin/bash

echo "Database is ready. Applying migrations..."
python manage.py makemigrations --noinput
python manage.py migrate --noinput

echo "Starting the Django development server..."
exec "$@"