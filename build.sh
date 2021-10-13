#!/bin/bash
IMAGE_NAME=danielcaldwell/nettools
IMAGE_VERSION=1.1

if [ "$(docker ps -a | grep $IMAGE_NAME:$IMAGE_VERSION)" ]; then
   echo "Containers exist using the image, unable to build. "
   echo "Check containers using:"
   echo "  docker ps -a | grep "$IMAGE_NAME:$IMAGE_VERSION
   echo "Remove containers using:"
   echo "  docker ps -a | grep  $IMAGE_NAME:$IMAGE_VERSION| awk '{print \$1}' | xargs docker rm"
   exit 1
fi

if [ "$(docker images | grep $IMAGE_NAME | grep $IMAGE_VERSION)" ]; then
   docker rmi $IMAGE_NAME:$IMAGE_VERSION
fi

docker build --progress=plain  --force-rm --tag $IMAGE_NAME:$IMAGE_VERSION .
