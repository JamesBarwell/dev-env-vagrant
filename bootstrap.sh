#!/usr/bin/env bash

# Update packages
apt-get update

# Install from apt
apt-get install -y vim git curl build-essential virtualbox-guest-utils lsof tmux strace python-pip openssl

# Install from web
cp /vagrant/install-scripts/* /tmp/
#node
/tmp/install-node-0.12
apt-get install -y nodejs
#docker
/tmp/install-docker
usermod -aG docker vagrant

# Install from pip
pip install ansible

# Set up useful scripts
cp /vagrant/user-scripts/* /usr/local/bin
