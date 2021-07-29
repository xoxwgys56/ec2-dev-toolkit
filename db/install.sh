#!/bin/bash

# install postgresql
sudo amazon-linux-extras install postgresql10 epel -y
sudo yum install postgresql-server postgresql-devel -y
sudo /usr/bin/postgresql-setup --initdb