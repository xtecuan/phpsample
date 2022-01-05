#!/bin/bash

running=$( docker ps | grep my-running-app | awk '{print $1}'  )

if [ -n $running ]
then
   docker stop $running
   docker rm $running
fi


docker run -d -p 80:80  --name my-running-app my-php-app
