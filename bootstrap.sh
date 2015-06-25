#!/usr/bin/env bash

# Update packages
apt-get update

# Install from apt
apt-get install -y vim git curl build-essential virtualbox-guest-utils lsof tmux strace python-pip

# Install from web
cp /vagrant/install-scripts/* /tmp/
/tmp/install-node-0.12
apt-get install -y nodejs
/tmp/install-docker

# Install from pip
pip install ansible
