#!/bin/sh
sleep 5s

echo "Start Java Service"
exec chpst -u svc:svc java -jar -Dserver.port=8080 /opt/jars/target.jar
