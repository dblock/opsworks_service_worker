include_attribute "deploy"

default[:services] = {}

node[:deploy].each do |application, deploy|
  default[:services][application] = {}
  node[:services][application].each do |service, options|
    Chef::Log.debug("Configuring #{service} for the #{application} aplication ...")
    default[:services][application][service] = options
  end
end

