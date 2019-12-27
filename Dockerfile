FROM openjdk:8u171-jdk

RUN apt-get update && apt-get install -y python-pip
RUN pip install awscli --ignore-installed six
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
