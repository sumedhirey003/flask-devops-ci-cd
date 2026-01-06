#!/bin/bash
set -e

echo "Install Dependencies.sh...."

APP_DIR="/home/ec2-user/flask-app"

cd $APP_DIR

# Create venv only if it does not exist
if [ ! -d "venv" ]; then
  echo "Creating virtual environment..."
  python3 -m venv venv
fi

source venv/bin/activate

pip install --upgrade pip
pip install -r requirements.txt
