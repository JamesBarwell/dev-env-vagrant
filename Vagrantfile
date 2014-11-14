# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty32"

  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 8443, host: 8443

  config.vm.provision :shell, path: "bootstrap.sh", privileged: true
  config.vm.provision :shell, path: "settings.sh", privileged: false

  config.vm.synced_folder "vshare", "/vshare", create: true
end
