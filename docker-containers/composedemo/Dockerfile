#base image
FROM python:3.7-alpine

#creates a folder and cd into the folder
WORKDIR /code

#create 2 environment variables (inside the container)

ENV FLASK_APP=app.py

ENV FLASK_RUN_HOST=0.0.0.0

#install alpine packages for this demo(developer will tell you all these name)
RUN apk add --no-cache gcc musl-dev linux-headers

#copy txt file from laptop OS to container inside /code with the same name
COPY requirements.txt  requirements.txt

#run this command inside the container (to install packages of python)
RUN pip install -r requirements.txt

#EXPOSE A PORT
EXPOSE 5000

# dot space dot
COPY . . 

#check app.py and run the app
CMD [ "flask", "run"  ]
