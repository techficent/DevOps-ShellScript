#create my image by using python3.8 as base
FROM python:3.8-slim-buster

#create a working folder inside the container and cd into this location
WORKDIR /python-docker

#copy a file called requirements.txt file from present location to /python-docker inside container
COPY requirements.txt requirements.txt

#install all dependencies
RUN pip3 install -r requirements.txt

#copy all source code files from current location in laptop (first .) to /python-docker (second .)
COPY . .

#use this command to run the app
CMD [ "python3", "app.py"]
