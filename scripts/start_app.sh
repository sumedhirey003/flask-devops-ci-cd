#!/bin/bash
set -e

echo "Starting Flask app..."

APP_DIR="/home/ec2-user/flask-app"
cd "$APP_DIR"

export PATH=$PATH:/home/ec2-user/.local/bin

nohup python3 app/main.py > app.log 2>&1 &
