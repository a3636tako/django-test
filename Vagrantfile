# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = "centos/7"
  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.synced_folder "mybook/", "/var/www/django/mybook", type: "virtualbox", :owner => "vagrant", :group => "vagrant", :mount_options => ['dmode=755', 'fmode=644']

 # config.vm.provision :shell, inline: <<-SHELL
 #   yum install -y epel-release
#	yum install -y ansible1.9 
#  SHELL

  config.vm.provision :ansible_local do |ansible|
    ansible.playbook = "ansible/vagrant-run.yml"  
  end
end
