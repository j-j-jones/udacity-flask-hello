#!/usr/bin/env bash

# Build image
docker build --tag=hello .

# List docker images
docker image ls

# Run flask app
docker run -p 8080:5001 hello 