#!/bin/bash
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
amazon-linux-extras install epel -y
amazon-linux-extras install java-openjdk11 -y
yum install epel-release -y 
yum install java-11-openjdk-devel -y
yum install jenkins -y 
systemctl start jenkins
systemctl enable jenkins