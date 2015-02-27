# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define "dev", primary: true do |dev|
    dev.vm.box = "ubuntu/trusty64"

    dev.vm.hostname = "devbox"
    config.vm.network "public_network"
    config.vm.network "private_network", type: "dhcp"
    dev.vm.network "forwarded_port", guest: 80, host: 8080
    dev.vm.network "forwarded_port", guest: 8443, host: 8443
    dev.vm.synced_folder "vshare", "/vshare", create: true

    dev.vm.provision :shell, path: "bootstrap.sh", privileged: true
    dev.vm.provision :shell, path: "settings.sh", privileged: false

    dev.vm.provider "virtualbox" do |v|
      v.memory = 1024
      v.cpus = 1
    end
  end
end
