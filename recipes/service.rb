node[:deploy].each do |application, deploy|
  node[:services][application].each do |service, options|
    service "#{application}.services.#{service}" do
      supports :status => false, :restart => false, :reload => false
      action :nothing
      start_command "#{deploy[:deploy_to]}/#{options[:cmd])} -d start -P #{@deploy[:deploy_to]}/shared/pids/service.#{service}.pid -e #{deploy[:rails_env]} #{option[:args]}"
      stop_command "#{deploy[:deploy_to]}/#{options[:cmd])} -P #{@deploy[:deploy_to]}/shared/pids/service.#{service}.pid stop"
    end
  end
end
