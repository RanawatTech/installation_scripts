#! /bin/bash

sudo apt-add-repository ppa:ansible/ansible -y

sudo apt update -y 

sudo apt install ansible -y

########################################

To install Ansible:
    1  yum update -y
    2  yum install epel-release -y
    3  sudo amazon-linux-extras install epel
    4  yum install git python python-level python.pp openssl ansible -y
    5  yum update -y
