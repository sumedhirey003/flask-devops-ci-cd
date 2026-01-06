#!/bin/bash
set -e

echo "Install Dependencies.sh...."

APP_DIR="/home/ec2-user/flask-app"


mkdir -p "$APP_DIR"
cd "$APP_DIR"

echo "Python version:"
python3 --version

python3 -m pip install --user --upgrade pip

python3 -m pip install --user -r requirements.txt
