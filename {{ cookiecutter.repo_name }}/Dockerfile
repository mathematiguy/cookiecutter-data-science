FROM ubuntu:18.04

# Set New Zealand mirrors and set timezone to Auckland
RUN sed -i 's/archive/nz.archive/' /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y tzdata
RUN echo "Pacific/Auckland" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

# Set the locale to New Zealand
RUN apt-get -y install locales
RUN locale-gen en_NZ.UTF-8
RUN dpkg-reconfigure locales

# Install Python
RUN apt-get update
RUN apt-get install -y python3-dev python3-apt python3-pip

# Copy python package to container
COPY setup.py {{ cookiecutter.project_name.replace("-", "_").replace(" ", "_") }} /work/
COPY requirements.txt /work/requirements.txt

# Install requirements
WORKDIR /work
RUN pip3 install -r /work/requirements.txt
