#!/bin/bash
set -e

echo "Stopping existing Flask app (if any)..."

PID=$(pgrep -f "flask" || true)

if [ -z "$PID" ]; then
  echo "No running Flask app found. Skipping stop."
  exit 0
fi

echo "Found Flask process with PID $PID. Stopping..."
kill $PID
