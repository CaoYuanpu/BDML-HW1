# with this line we import python language.
FROM python:3.10
# copy the requirements.txt file in the image
COPY ./my-app/requirements.txt /app/requirements.txt
# the working directory will be the /app directory which can be 
# found inside the python image
WORKDIR /app
# let's install the requirements (only Flask is needed)
RUN pip3 install -r requirements.txt
# we can now add our directory to the working directory
COPY ./my-app/ /app
# let's run the application
CMD [ "python3","app.py" ]