#!/bin/sh

docker rmi andreasbaumann/mysqlfs
docker build --force-rm -t andreasbaumann/mysqlfs .

docker images

#docker push andreasbaumann/struswebservice
