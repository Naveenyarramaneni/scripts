#!/bin/bash
 sudo yum update -y
sudo yum install httpd -y 
systemctl enable httpd
systemctl start httpd