FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y software-properties-common git curl python3-pip sshpass  && apt-add-repository -y ppa:ansible/ansible && apt-get update
RUN pip3 install 'ansible-base==2.10.13'
RUN ansible --version
CMD [ "sleep", "infinity" ]