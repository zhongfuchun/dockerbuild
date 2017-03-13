#!/bin/sh

echo "Start Python Service"
cd /workspace/
exec chpst -u svc:svc python run.py
