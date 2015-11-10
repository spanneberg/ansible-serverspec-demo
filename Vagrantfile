Vagrant.configure(2) do |config|

  # default base box for all defined boxes in this Vagrantfile
  config.vm.box = "ubuntu/trusty64"

  config.vm.define "lb" do |lb|
    lb.vm.hostname = "lb"
    lb.vm.network "private_network", ip: "192.168.33.100"
  end

  (1..3).each do |i|
    config.vm.define "node#{i}" do |node|
      node.vm.hostname = "web#{i}"
      node.vm.network "private_network", ip: "192.168.33.#{100 + i}"
      node.vm.provider "virtualbox" do |vb|
        vb.memory = "1024"
        vb.cpus   = 2
      end
    end
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook        = "ansible/site.yml"
    ansible.inventory_path  = "ansible/inventory"
    ansible.sudo            = true
    #ansible.sudo_user       = "foobar"
    ansible.verbose         = "vv"
  end
  
end

# config.vm.network "forwarded_port", guest: 80, host: 8080

# config.vm.synced_folder "../data", "/vagrant_data"

# config.vm.provider "virtualbox" do |vb|
#   vb.memory = "1024"
# end

#config.vm.provision "shell", inline: <<-SHELL
#  sudo apt-get update
#SHELL

