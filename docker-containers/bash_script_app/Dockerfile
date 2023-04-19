#install alpine linux image for this new container
FROM alpine

#create and enter /app folder inside the container
WORKDIR /app

#copy all files (fifth.sh) from current location in laptop to current
#location in the container /app
copy .  .


#bash shell install

RUN apk add bash

#command to execute when container is launched
CMD ["bash"  ,  "fifth.sh"]






