Vagrant.configure(2) do |config|

  # default base box for all defined boxes in this Vagrantfile
  config.vm.box = "ubuntu/trusty64"

  (1..3).each do |i|
    config.vm.define "node#{i}" do |node|
      node.vm.hostname = "web#{i}"
      node.vm.network "private_network", ip: "192.168.33.#{100 + i}"
    end
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

#config.vm.provision "ansible" do |ansible|
#  ansible.playbook  = "ansible/playbook.yml"
#  ansible.sudo      = true
#end
