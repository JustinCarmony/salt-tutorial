# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define :master, primary: true do |master_config|
    master_config.vm.box = 'precise64'
    master_config.vm.box_url = 'http://files.vagrantup.com/precise64.box'
    master_config.vm.hostname = "salt.example.com"
    master_config.vm.network "private_network", ip: "10.10.10.10"

    # Install Salt Master & Minion
    master_config.vm.provision :salt do |salt|
      salt.install_master = true
      salt.run_highstate = false

      salt.master_config = 'saltstack/etc/master'
      salt.minion_config = 'saltstack/etc/minion'
    end
  end

  config.vm.define :minion1 do |minion_config|
    minion_config.vm.box = 'precise64'
    minion_config.vm.box_url = 'http://files.vagrantup.com/precise64.box'
    minion_config.vm.hostname = "minion1.example.com"
    minion_config.vm.network "private_network", ip: "10.10.10.11"

    # Install Salt Minion
    minion_config.vm.provision :salt do |salt|
      salt.run_highstate = false
      salt.minion_config = 'saltstack/etc/minion'
   end
  end

  config.vm.define :minion2 do |minion_config|
    minion_config.vm.box = 'precise64'
    minion_config.vm.box_url = 'http://files.vagrantup.com/precise64.box'
    minion_config.vm.hostname = "minion2.example.com"
    minion_config.vm.network "private_network", ip: "10.10.10.12"

    # Install Salt Minion
    minion_config.vm.provision :salt do |salt|
      salt.run_highstate = false

      salt.minion_config = 'saltstack/etc/minion'
    end
  end
end
