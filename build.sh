#!/usr/bin/env bash

set -o errexit  # exit on error

pip install -r requirements.txt --use-pep517

sudo apt-get install zbar-tools

python manage.py collectstatic --no-input
python manage.py migrate