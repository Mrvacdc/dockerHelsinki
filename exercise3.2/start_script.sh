#!/bin/bash

# arguments
# $1 repository url
# $2 dockerhub username
# $3 image

git clone $1 $3

cd $3

rm -rf .git

docker build . -t $3

docker login -u $2

docker tag $3 $2/$3

docker push $2/$3
