
#directly start with NGINX image layer
FROM nginx:latest

#create a working directory inside the container and cd into this location
WORKDIR /app

#copy all relevant source files (only one executable file here) into current location
#OF THE CONTAINER (current location is /app)
COPY twelve .

#final command to run when container starts
CMD ["./twelve" ]


