#!/bin/bash
echo "from dev1"
echo "from dev1 dev1 "
docker build --no-cache --tag bashokku/flaskapp:latest --file Dockerfile .
docker tag flaskapp bashokku/flaskapp
docker push bashokku/flaskapp
