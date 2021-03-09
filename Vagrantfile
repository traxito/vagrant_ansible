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
  config.vm.box = "centos/7"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  config.vm.network "private_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "hyperv" do |hyperv|
    cpus = "1"
    maxmemory = "1024"
    h.enable_virtualization_extensions = true
    h.linked_clone = true
  end
    # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Enable provisioning with a shell script. Additional provisioners such as
  # Ansible, Chef, Docker, Puppet and Salt are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL

# master-ansible
config.vm.define "master-ansible" do |app|
	config.vm.boot_timeout = 400
  #config.vm.synced_folder ".", "/vagrant"
    app.vm.hostname = "master-ansible"
    app.vm.network "private_network", ip: "192.168.33.10"
    app.vm.provision "shell", path: "provision/provision.sh"
    #config.vm.provision "file", source: "/redis_vagrant/provision/id_rsa", destination: "/root/.ssh"
    #config.vm.provision "file", source: "/redis_vagrant/provision/id_rsa.pub", destination: "/root/.ssh"
    #config.vm.provision "file", source: "/redis_vagrant/provision/authorized_keys", destination: "/root/.ssh"
    #config.vm.provision "file", source: "/redis_vagrant/provision/ansible.cfg", destination: "/etc/ansible/"
    #config.vm.provision "file", source: "/redis_vagrant/provision/hosts", destination: "/etc"
    #config.vm.provision "file", source: "/redis_vagrant/provision/sudoers", destination: "/etc"
    #config.vm.provision "file", source: "/redis_vagrant/provision/inventario/hosts", destination: "/etc/ansible/"
    #config.vm.provision "shell", inline: <<-SHELL
    #cp -r /vagrant/provision/id_rsa /root/.ssh
    #cp -r /vagrant/provision/id_rsa.pub /root/.ssh
    #chmod 400 /root/id_rsa
    #cp -r /vagrant/provision/authorized_keys /root/.ssh
    #cp -r /vagrant/provision/ansible.cfg /etc/ansible/
    #cp -r /vagrant/provision/hosts /etc/
    #cp -r /vagrant/provision/sudoers /etc
    #cp -r /vagrant/provision/inventario/hosts /etc/ansible/
    #chmod 400 /root/id_rsa
  #SHELL
	end

  # slave1
    config.vm.define "slave1" do |app|
	config.vm.boot_timeout = 400
  #config.vm.synced_folder ".", "/vagrant"
    app.vm.hostname = "slave1"
    app.vm.network "private_network", ip: "192.168.33.11"  
	app.vm.provision "shell", path: "provision/provision-slave.sh"
  #config.vm.provision "file", source: "/redis_vagrant/provision/id_rsa.pub", destination: "/root/.ssh"
  #config.vm.provision "file", source: "/redis_vagrant/provision/authorized_keys", destination: "/root/.ssh"
  #config.vm.provision "file", source: "/redis_vagrant/provision/hosts", destination: "/etc"
  #config.vm.provision "file", source: "/redis_vagrant/provision/sudoers", destination: "/etc"
	end
	# slave2
    config.vm.define "slave2" do |app|
	config.vm.boot_timeout = 400
  #config.vm.synced_folder ".", "/vagrant"
    app.vm.hostname = "slave2"
    app.vm.network "private_network", ip: "192.168.33.12"
	app.vm.provision "shell", path: "provision/provision-slave.sh"
  #config.vm.provision "file", source: "/redis_vagrant/provision/id_rsa.pub", destination: "/root/.ssh"
  #config.vm.provision "file", source: "/redis_vagrant/provision/authorized_keys", destination: "/root/.ssh"
  #config.vm.provision "file", source: "/redis_vagrant/provision/hosts", destination: "/etc"
  #config.vm.provision "file", source: "/redis_vagrant/provision/sudoers", destination: "/etc"
  end
end
