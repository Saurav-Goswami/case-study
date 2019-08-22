#!/bin/bash

# Copy the new jar to the build location

cp -f /home/ubuntu/jenkins-data/pipeline/devops-master/config-service/target/*.jar /home/ubuntu/jenkins-data/pipeline/case-study/build/config-service/

cp -f /home/ubuntu/jenkins-data/pipeline/devops-master/discovery-service/target/*.jar /home/ubuntu/jenkins-data/pipeline/case-study/build/discovery-service/

cp -f /home/ubuntu/jenkins-data/pipeline/devops-master/employee-service/target/*.jar /home/ubuntu/jenkins-data/pipeline/case-study/build/employee-service/

cp -f /home/ubuntu/jenkins-data/pipeline/devops-master/organization-service/target/*.jar /home/ubuntu/jenkins-data/pipeline/case-study/build/organization-service/

cp -f /home/ubuntu/jenkins-data/pipeline/devops-master/proxy-service/target/*.jar /home/ubuntu/jenkins-data/pipeline/case-study/build/proxy-service/

cp -f /home/ubuntu/jenkins-data/pipeline/devops-master/gateway-service/target/*.jar /home/ubuntu/jenkins-data/pipeline/case-study/build/gateway-service/

cp -f /home/ubuntu/jenkins-data/pipeline/devops-master/department-service/target/*.jar /home/ubuntu/jenkins-data/pipeline/case-study/build/department-service/



echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"

cd case-study/build/ && docker-compose -f docker-compose-build.yml build
