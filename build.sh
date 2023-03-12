#!/usr/bin/env bash

set -o errexit  # exit on error

apt-get install zbar tools -y

pip install -r requirements.txt --use-pep517

python manage.py collectstatic --no-input
python manage.py migrate