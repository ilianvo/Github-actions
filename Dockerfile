# our base image
FROM alpine:3.5
# Install python and pip
RUN apk add --update python3 py3-pip
# upgrade pip
RUN pip3 install --upgrade pip
# install Python modules needed by the Python app
COPY requirements.txt /usr/src/app/
RUN pip3 install --no-cache -r /usr/src/app/requirements.txt --index-url=https://pypi.org/simple
# copy files required for the app to run
COPY app.py /usr/src/app/
COPY templates/index.html /usr/src/app/templates/
# tell the port number the container should expose
EXPOSE 5000
# run the application
CMD ["python3", "/usr/src/app/app.py"]

