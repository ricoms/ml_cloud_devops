#!/usr/bin/env bash

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=ricoms858/ml_cloud_devops
tag=$(git rev-parse --verify HEAD | sed -r 's/(.{7}).*/\1/g')

echo "Docker ID and Image: $dockerpath"
docker login
docker tag api ${dockerpath}:${tag}

docker push ${dockerpath}:${tag}
