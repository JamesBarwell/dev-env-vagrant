#!/usr/bin/env bash

# Update packages
apt-get update

# Install useful packages
apt-get install -y vim git curl

# Install nodejs
apt-get install -y software-properties-common python-software-properties
add-apt-repository ppa:chris-lea/node.js 
apt-get update
apt-get install -y nodejs