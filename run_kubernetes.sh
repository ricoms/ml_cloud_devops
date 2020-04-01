#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

dockerpath=ricoms858/ml_cloud_devops

kubectl run houseprediction\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=houseprediction

kubectl get pods

kubectl port-forward houseprediction 8000:80
