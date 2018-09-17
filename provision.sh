#!/bin/bash
set -e
#provision.sh
 sudo apt-get update
 echo "apt-get update done."
 sudo apt-get -y upgrade
 sudo apt-get install -y python python-pip
 sudo pip install ansible
 sudo timedatectl set-timezone Europe/Istanbul
 sudo localectl set-locale LANG=en_US.utf8
 sudo wget 'https://raw.githubusercontent.com/leoncaiau912/packer/master/docker-install.sh'
 echo "Running docker installation."
 sudo bash docker-install.sh
 
 sudo wget 'https://raw.githubusercontent.com/leoncaiau912/packer/master/i_playbook.yml'
 echo "Running build."
 sudo ansible-playbook i_playbook.yml
