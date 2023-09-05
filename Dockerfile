# if only pull 
# docker pull
FROM nvidia/cuda:11.8.0-cudnn8-devel-ubuntu22.04

# apt update
RUN apt-get update 

# install ppa for install python of specified version
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update

# install curl
RUN apt-get install -y curl

# install git
RUN apt-get install -y git

# install python
ENV TZ=Asia/Tokyo
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y python3.9-venv
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.9 1

# build command
# docker build -t python39_with_cuda118_cudnn8_on_ubuntu2204 .