#base image
FROM ubuntu:20.04
WORKDIR /app
COPY requirements.txt .
RUN sudo apt-get -y install python3-pip
RUN pip3 install -r requirements.txt
COPY . .
CMD ["bash","start.sh"]
