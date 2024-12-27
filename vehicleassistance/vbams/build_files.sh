#!/bin/bash

# Exit immediately if a command exits with a non-zero status
echo "BUILD START"

# Install dependencies
pip install -r requirements.txt

# Run database migrations (if needed)


# Collect static files
python manage.py collectstatic --noinput

echo "BUILD END"
