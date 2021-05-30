#!/usr/bin/env bash

# build docker image
docker build --tag=flask-hello .

# List docker images
docker image ls

# Run flask app
# docker run -p 8000:5001 api
docker run -it -p80:80 --rm flask-hello
