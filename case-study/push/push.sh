#!/bin/bash

echo "********************"
echo "** Pushing images ***"
echo "********************"


BUILD_TAG=10
DISCOVERY_SERVICE_IMAGE="discovery-service"
CONFIG_SERVICE_IMAGE="config-service"
DEPARTMENT_SERVICE_IMAGE="department-service"
ORGANIZATION_SERVICE_IMAGE="organization-service"
PROXY_SERVICE_IMAGE="proxy-service"
GATEWAY_SERVICE_IMAGE="gateway-service"
EMPLOYEE_SERVICE_IMAGE="employee-service"

PASS="saurav@02"

echo "** Logging in ***"
docker login -u sauravgoswami -p $PASS
echo "*** Tagging Discovery-service image ***"
docker tag $DISCOVERY_SERVICE_IMAGE:latest sauravgoswami/$DISCOVERY_SERVICE_IMAGE:$BUILD_TAG
echo "*** Pushing Discovery-service image ***"
docker push sauravgoswami/$DISCOVERY_SERVICE_IMAGE:$BUILD_TAG

echo "*** Tagging Config-service image ***"
docker tag $CONFIG_SERVICE_IMAGE:latest sauravgoswami/$CONFIG_SERVICE_IMAGE:$BUILD_TAG
echo "*** Pushing Config-service image ***"
docker push sauravgoswami/$CONFIG_SERVICE_IMAGE:$BUILD_TAG

echo "*** Tagging Department-service image ***"
docker tag $DEPARTMENT_SERVICE_IMAGE:latest sauravgoswami/$DEPARTMENT_SERVICE_IMAGE:$BUILD_TAG
echo "*** Pushing Department-service image ***"
docker push sauravgoswami/$DEPARTMENT_SERVICE_IMAGE:$BUILD_TAG

echo "*** Tagging Proxy-service image ***"
docker tag $PROXY_SERVICE_IMAGE:latest sauravgoswami/$PROXY_SERVICE_IMAGE:$BUILD_TAG
echo "*** Pushing Proxy-service image ***"
docker push sauravgoswami/$PROXY_SERVICE_IMAGE:$BUILD_TAG

echo "*** Tagging Gateway-service image ***"
docker tag $GATEWAY_SERVICE_IMAGE:latest sauravgoswami/$GATEWAY_SERVICE_IMAGE:$BUILD_TAG
echo "*** Pushing Gateway-service image ***"
docker push sauravgoswami/$GATEWAY_SERVICE_IMAGE:$BUILD_TAG

echo "*** Tagging Employee-service image ***"
docker tag $EMPLOYEE_SERVICE_IMAGE:latest sauravgoswami/$EMPLOYEE_SERVICE_IMAGE:$BUILD_TAG
echo "*** Pushing Employee-service image ***"
docker push sauravgoswami/$EMPLOYEE_SERVICE_IMAGE:$BUILD_TAG

echo "*** Tagging Organization-service image ***"
docker tag $ORGANIZATION_SERVICE_IMAGE:latest sauravgoswami/$ORGANIZATION_SERVICE_IMAGE:$BUILD_TAG
echo "*** Pushing Organization-service image ***"
docker push sauravgoswami/$ORGANIZATION_SERVICE_IMAGE:$BUILD_TAG


