#!/bin/bash

docker login -u "$DOCKER_HUB_USERNAME" -p "$DOCKER_HUB_PASSWORD" 
docker build -t "$IMAGE_NAME":"$TRAVIS_TAG" .
docker tag "$IMAGE_NAME":"$TRAVIS_TAG" "$DOCKER_HUB_IMAGE_NAME":"$TRAVIS_TAG"
docker push "$DOCKER_HUB_IMAGE_NAME":"$TRAVIS_TAG"