#!/bin/bash
echo "from test"
echo "from test"
docker build --no-cache --tag bashokku/flaskapp:latest --file Dockerfile .
docker tag flaskapp bashokku/flaskapp
docker push bashokku/flaskapp
