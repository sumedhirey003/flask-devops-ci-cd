#!/bin/bash
set -e

echo "Install Dependencies.sh...."

APP_DIR="/home/ec2-user/flask-app"

# Ensure app directory exists
mkdir -p "$APP_DIR"

cd "$APP_DIR"

# Ensure Python is available
python3 --version

# Create virtual environment if missing
if [ ! -d "$APP_DIR/venv" ]; then
  echo "Creating virtual environment..."
  python3 -m venv "$APP_DIR/venv"
fi

# Activate venv
source "$APP_DIR/venv/bin/activate"

pip install --upgrade pip
pip install -r requirements.txt
