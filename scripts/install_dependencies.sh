#!/bin/bash
set -e

echo "Install Dependencies.sh...."

cd /home/ec2-user/flask-app

python3 -m venv venv
source venv/bin/activate

pip install --upgrade pip
pip install -r requirements.txt