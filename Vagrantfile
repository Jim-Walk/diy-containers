# -*- mode: ruby -*-
# vi: set ft=ruby :
# https://stackoverflow.com/questions/17308629/specify-vagrantfile-path-explicity-if-not-plugin
current_dir    = File.dirname(File.expand_path(__FILE__))


Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/bionic64"
  config.vm.provider "virtualbox" do |vb|
  # Customize the amount of memory on the VM:
    vb.memory = "2048"
  end

  config.vm.define "axiom", autostart: false do |axiom|
    axiom.vm.box = "ubuntu/focal64"
    axiom.vm.network "forwarded_port", guest: 22, host: 2225, id: "ssh"
    axiom.vm.hostname = "axiom"
      axiom.vm.provision "ansible" do |ansible|
        ansible.verbose = "v"
        ansible.playbook = "playbooks/axiom.yml"
        ansible.extra_vars = { ansible_python_interpreter:"/usr/bin/python3" }
    end
  end

  config.vm.synced_folder "#{current_dir}", "/vagrant_data"

end
