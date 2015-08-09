#Welcome to the IDnow docker example project

##Setup

You need:
* Java 8 installed
* git installed
* docker installed
* A checkout of this project (obviously)

The code to run is located in the de.idnow.example project at https://github.com/arminbauer/de.idnow.example. It is already included as a git submodule at application/de.idnow.example. To pull the code, please run the following command:

git submodule foreach git pull origin master

##Your tasks

You are provided with an play! framework example project. Your tasks:
- Create a docker image for the de.idnow.example project which runs the project on port 9000
- Create a second docker image with an nginx reverse proxy which run on port 80 and forwards calls to the first docker image

##The first docker image

- Update the dockerfile at application/Dockerfile so that it runs the compiled project from application/de.idnow.example/target/universal/de-idnow-example-1.0-SNAPSHOT.zip
- A build.sh file is provided which compiles the de.idnow.example project using activator and outputs the application/de.idnow.example/target/universal/de-idnow-example-1.0-SNAPSHOT.zip
- Build a bash script to build the docker image
- Build a bash script to run the docker image

##The second docker image

- Update the dockerfile at nginx-proxy/Dockerfile so that it works as a reverse proxy for the first container
- A build.sh file is provided which compiles the docker image at nginx-proxy/build.sh
- Build a bash script to run the docker image

##What do we check?

How do we check the results:
- First we check if the tasks have been finished and if they work correctly
- We expect good code quality
- We expect the code to be easily readable and understandable
- Additional points if you have taken measures to harden the images

##Where to start

- Check application/Dockerfile
- Check application/build.sh
- Check nginx-proxy/Dockerfile
- Check nginx-proxy/build.sh

##How to turn in the assignment

- Clone this Github repository
- Check in your code
- Create a pull request against this Github repository