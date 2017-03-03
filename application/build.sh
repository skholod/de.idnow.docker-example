#!/bin/bash -ex

cd de.idnow.example
./activator update compile dist
cd ..

# now create the docker image
docker build -t idnow:idapp .
