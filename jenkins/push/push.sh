#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u sauravgoswami -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG sauravgoswami/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push sauravgoswami/$IMAGE:$BUILD_TAG
