#!/bin/bash

# https://github.com/shyiko/jabba
curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash && . ~/.jabba/jabba.sh

java_version=$"adopt@1.8-0"

# if succeed jabba
if [ jabba --version ]
then
    echo "succeed install jabba. install $java_version"
    jabba install $java_version
else
    echo "failed install jabba"