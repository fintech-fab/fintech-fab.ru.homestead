VAGRANTFILE_API_VERSION = "2"

path = "#{File.dirname(__FILE__)}"

require 'yaml'
require path + '/scripts/homestead.rb'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  Homestead.configure(config, YAML::load(File.read(path + '/Homestead.yaml')))
  config.vm.provision :shell, :path => "scripts/pma.sh"
  config.vm.provision :shell, :path => "scripts/fintech-fab.sh"
  config.vm.provision :shell, :path => "scripts/beanstalkd.sh"
end
