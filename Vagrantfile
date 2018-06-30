# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
	config.vm.box = "ubuntu/trusty64" 
	config.vm.box_check_update = false
	config.vm.provider :virtualbox do |vb|
		vb.customize ["modifyvm", :id, "--vram", 16]
		vb.customize ["modifyvm", :id, "--memory", "2048"]
		vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
		vb.gui = false
	end

	# port,ip,domain
	config.vm.network "forwarded_port", guest: 80, host: 80
	config.vm.network :private_network, ip: "192.168.33.110"
	config.vm.hostname = "youhey0801.dev.test"
	config.hostsupdater.aliases = [
		"sample.youhey0801.dev.test"
	]

	config.vm.provision "shell", inline: <<-SHELL
		sudo chmod 777 /vagrant/init.sh
		/vagrant/init.sh
	SHELL
end
