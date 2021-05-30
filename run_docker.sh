#!/usr/bin/env bash

# build docker image
docker build --tag=flask-hello .

# Run flask app
# -p80:80 is important to use !
docker run -it -p80:80 --rm flask-hello
