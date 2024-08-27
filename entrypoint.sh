#!/bin/sh

echo "Migrating database"

python3 manage.py migrate

exec "$@"