#!/bin/bash
echo "from dev"
echo "from devft"
#echo " from dev"
docker build --no-cache --tag bashokku/flaskapp:latest --file Dockerfile .
docker tag flaskapp bashokku/flaskapp
docker push bashokku/flaskapp
##echo
