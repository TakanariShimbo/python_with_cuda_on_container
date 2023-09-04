FROM nvidia/cuda:11.8.0-cudnn8-devel-ubuntu22.04

# apt update
RUN apt-get update 

# install ppa for install python of specified version
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update

# install python
ENV TZ=Asia/Tokyo
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y python3.9 python3.9-distutils python3.9-dev
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.9 1
RUN update-alternatives --set python3 /usr/bin/python3.9
RUN apt-get install -y curl && \
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python3 get-pip.py && \
    rm get-pip.py
RUN apt-get install python3-venv -y

# install git
RUN apt-get install -y git

# build command
# docker build -t python39_with_cuda118_cudnn8_on_ubuntu2204 .