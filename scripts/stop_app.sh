#!/bin/bash
set -e

echo "Stopping existing Flask app (if any)..."

pkill -f "python.*main.py" || true

echo "Stopped"