# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 1
    v.name = "vagrant-ee"
  end

  # Disable checking update on start.
  config.vm.box_check_update = false

  config.vm.network "private_network", ip: "192.168.33.33"
  config.vm.network "public_network", bridge: 'en0: Wi-Fi (AirPort)'
  
  # Provision shell: nginx restart
  config.vm.provision "shell", path: "ee.sh"
  
  # # SYNC FOLDER CONFIG
  
  # config.vm.synced_folder "www/", "/var/www", id: "vagrant-root",
  #   owner: "vagrant",
  #   group: "www-data",
  #   mount_options: ["dmode=775,fmode=664"]
  #
  # # EE logs
  # config.vm.synced_folder "logs/", "/var/log/ee",
  #   owner: "root",
  #   group: "root"
  #
  # # Nginx logs
  # config.vm.synced_folder "logs/", "/var/log/nginx",
  #   owner: "root",
  #   group: "root"

end
