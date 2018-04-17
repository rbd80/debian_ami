#!/bin/bash

# Packer is not work so this is a temp until fixed
###################################################

echo deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main | sudo tee -a /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
sudo apt-get update -y
sudo apt-get install ansible -y

git clone https://github.com/rbd80/debian_ami.git

sudo ansible-galaxy install -r debian_ami/ansible/requirements.yaml -p /home/admin/debian_ami/ansible

sudo ansible-playbook debian_ami/ansible/playbook.yaml -vvvv