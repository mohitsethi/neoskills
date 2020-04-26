# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.provision "chef_client" do |chef|
    chef.chef_server_url = "https://api.chef.io/organizations/neoskills"
    chef.validation_key_path = "~/Downloads/chef-repo/.chef/mohitsethi.pem"
    chef.validation_client_name = "mohitsethi"

    chef.arguments = "--chef-license accept"

    chef.add_recipe "myckbkl::default"

    # chef.environment = "development"

  end
  
end
