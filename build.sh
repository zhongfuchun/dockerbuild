echo "DMP Docker Builder"

SVC_NAME=$2
TAG=$3
PROJECT=$4
DATE=`date +%Y%m%d`

echo "Build "$1" service: "$SVC_NAME

cp templates/$1/** .
sed -i 's,'"<serviceName>"','"$SVC_NAME"',g' consul.json
sed -i 's,'"<serviceName>"','"$SVC_NAME"',g' Dockerfile
mv consul.json ${SVC_NAME}.json

docker build -t reg.zintow.com/$PROJECT/$SVC_NAME:$TAG -t reg.zintow.com/$PROJECT/$SVC_NAME:$DATE .
docker push reg.zintow.com/$PROJECT/$SVC_NAME:$TAG
docker push reg.zintow.com/$PROJECT/$SVC_NAME:$DATE
