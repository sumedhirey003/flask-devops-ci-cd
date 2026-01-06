#!/bin/bash
set -e 

echo "Stopping existing Flask app (if any) ....."

PID=$(pgrep -f "python app/main.py" || true)

if [ -n "$PID"]; then
    kill $PID
    echo "Stopped process $PID"
else 
    echo "No running app found"
fi