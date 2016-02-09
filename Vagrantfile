# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'

Vagrant.require_version '>= 1.5.0'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.hostname = 'test-vagrant'
  config.vm.box = 'opscode-centos-6.7'
  config.vm.box_url = 'http://opscode-vm-bento.s3.amazonaws.com/vagrant/'\
    'virtualbox/opscode_centos-6.7_chef-provisionerless.box'

  config.vm.network :private_network, ip: '192.168.123.100'
  config.vm.network 'forwarded_port', guest: 8181,  host: 8181  

  config.vm.provider 'virtualbox' do |v|
    v.memory = 3072
    v.cpus = 2
  end

  config.omnibus.chef_version = 'latest'
  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.json = {

    }
    chef.run_list = [
      "recipe[test-vagrant::default]"
    ]
  end
end
