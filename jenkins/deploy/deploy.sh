#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth pr-user@13.233.197.173:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish pr-user@13.233.197.173:/tmp/publish
ssh -i /opt/prod pr-user@13.233.197.173 "/tmp/publish"
