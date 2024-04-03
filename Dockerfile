#INSTRUCTIONS args(DOCKERFILE STRUCTURE)

#This creates the base image to build
#FROM alpine:latest
#Execute any commands in a new layer on top of the current image and commit the results.
#RUN apk add curl
#Set the working directory for any RUN, CMD, ENTRYPOINT, COPY and ADD,
#instructions that follow it in the Dockerfile
#WORKDIR /downloads
#RUN adduser -D Godzilla
#Set the user name (or UID) and optionally the user group (or GID).
#USER Godzilla


#FROM mcr.microsoft.com/powershell
#RUN mkdir -p demo
#SHELL ["pwsh","-command"]
#RUN "Hello World" | Out-File -Path /demo/message.txt

FROM python
WORKDIR /code
COPY Helloworld.txt /code/
ADD https://github.com/pypa/get-pip/raw/dbf0c85f76fb6e1ab42aa672ffca6f0a675d9ee4/public/get-pip.py /code/
EXPOSE 5000
EXPOSE 9000