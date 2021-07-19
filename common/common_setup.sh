#!/bin/bash

# below command include basic program
# list
# - git ?

sudo yum update- y

# install docker
sudo amazon-linux-extras install docker
# run docker service
sudo service docker start
# add permission
sudo usermod -a -G docker ec2-user