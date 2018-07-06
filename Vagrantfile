# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "bento/ubuntu-16.04"
  config.ssh.insert_key = false

  config.vm.provider :virtualbox do |v|
    v.memory = 256
  end

  config.vm.define :web1 do |web1|
    web1.vm.network :forwarded_port, guest:80, host: 8080
    web1.vm.provision :shell, path: 'provisioners/tmux.sh'
  end


end
