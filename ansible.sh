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


###########################################
Module
---------
 ansible demo -b -m yum -a "pkg=httpd state=absent"
 
  demo=Group name
 -b =sudo previlage
 -m =module
 
 
 Copy file from server to node
  ansible demo[0] -b -m copy -a "src=copiedfromserver dest=/temp"



//
ansible demo -m setup

TO CHECK THE STAUS OF HTTPD
sudo server httpd status


######################################################
                 HANDLER
######################################################

---
- hosts: demo
  name: ansible
  become: yes
  connection: ssh
  tasks:
          - name: Install httpd
            action: yum name=httpd state=installed
            notify: restart httpd
  handlers:
          - name: restart httpd
            action: service name=httpd state=restarted

########################################################



///

######################################################
                 VARIABLE
######################################################
---
- hosts: demo
  user: ansible
  become: yes
  connection: ssh
  vars:
    pkgname: httpd
  tasks:
            - name: install HTTPD server on centos 7
              action: yum name='{{pkgname}}' state=installed
              
        
###############################################################    






######################################################
                 LOOP
######################################################



---
- hosts: demo
  user: ansible
  become: yes
  connection: ssh
  tasks:
          - name: add a list of user
            user: name='{{item}}' state=present
            with_items:
                       - Arvind
                       - Raj
                       - Govind
                       - Rishik

####################################################################


ansible demo -m setup -a "filter=*ipv4*"
