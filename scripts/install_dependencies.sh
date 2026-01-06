#!/bin/bash
set -e

echo "Install Dependencies.sh...."

APP_DIR="/home/ec2-user/flask-app"
mkdir -p "$APP_DIR"
cd "$APP_DIR"

echo "Python version:"
python3 --version

echo "Ensuring pip is installed..."
python3 -m ensurepip --upgrade

echo "Upgrading pip..."
python3 -m pip install --user --upgrade pip

echo "Installing application dependencies..."
python3 -m pip install --user -r requirements.txt
