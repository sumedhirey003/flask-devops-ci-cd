#!/bin/bash
set -e

echo "Starting Flask app...."

cd /home/ec2-user/flask-app
source venv/bin/activate

nohup python app/main.py > app.log 2>&1 &