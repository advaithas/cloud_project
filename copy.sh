#!/bin/bash

# Copy .env file to uc1 directory
cp /var/jenkins_home/workspace/cc_project/uc1/.env /var/jenkins_home/workspace/cc_project/uc1

# Copy .env file to uc2 directory
cp /var/jenkins_home/workspace/cc_project/uc1/.env /var/jenkins_home/workspace/cc_project/uc2

# Copy .env file to uc3 directory
cp /var/jenkins_home/workspace/cc_project/uc1/.env /var/jenkins_home/workspace/cc_project/uc3
