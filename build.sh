#!/usr/bin/env bash

set -o errexit  # exit on error

yum install zbar

pip install -r requirements.txt --use-pep517

python manage.py collectstatic --no-input
python manage.py migrate