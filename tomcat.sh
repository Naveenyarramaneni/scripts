#!/bin/bash
# install the java
sudo amazon-linux-extras install epel 
sudo amazon-linux-extras install java-openjdk11 -y
# install the tomcat
cd /opt/
sudo wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.58/bin/apache-tomcat-9.0.58-windows-x64.zip
# extract 
sudo unzip apache-tomcat-9.0.58-windows-x64.zip
# delete the zip
sudo rm -f apache-tomcat-9.0.58-windows-x64.zip
# rename 
sudo mv apache-tomcat* tomcat
# give the permissios
sudo chmod -R 755 /opt/tomcat/
#start the tomcat
sudo sh /opt/tomcat/bin/startup.sh
