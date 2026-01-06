#!/bin/bash
set -e

echo "Starting Flask app..."

cd /home/ec2-user/flask-app

pkill -f "python.*main.py" || true

nohup python3 app/main.py > app.log 2>&1 &

echo "Flask app started"
