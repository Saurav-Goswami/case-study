#!/bin/bash

echo "**************************"
echo "** Building jar***********"
echo "**************************"

WORKSPACE=/home/ubuntu/jenkins-data/pipeline

docker run --rm  -v  $WORKSPACE/devops-master/:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
