#!/bin/bash -ex

#Add "-p 9000:9000" option if it has to be available directly from outside
docker run -d \
           -h idapp --name idapp \
           --log-driver syslog \
           idnow:idapp
