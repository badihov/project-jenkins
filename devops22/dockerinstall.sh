#!/bin/bash
sudo yum update -y
sudo yum install -y docker
sudo service docker start

docker run -p 8080:8080 -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts-jdk11
