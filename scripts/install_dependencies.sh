#!/bin/bash
set -e

echo "Install Dependencies.sh...."

APP_DIR="/home/ec2-user/flask-app"


mkdir -p "$APP_DIR"

cd "$APP_DIR"

echo "Python version:"
python3 --version

echo "Installing python3-venv if missing..."
sudo yum install -y python3-venv

if [ ! -d "$APP_DIR/venv/bin" ]; then
  echo "Creating virtual environment..."
  python3 -m venv "$APP_DIR/venv"
fi


source "$APP_DIR/venv/bin/activate"

pip install --upgrade pip
pip install -r requirements.txt
