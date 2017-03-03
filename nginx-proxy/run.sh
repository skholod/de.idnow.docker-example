#!/bin/bash -ex

# Runs Nginx container as frontend to main application
docker run -d \
           -p 80:80 \
           -h idfe --name idfe \
           --link idapp:idapp \
           --log-driver syslog \
           idnow:idfe
