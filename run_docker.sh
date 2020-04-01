#!/usr/bin/env bash

docker build --tag=api .

docker image ls

docker run -p 8000:80 api
