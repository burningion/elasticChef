include_recipe "python::default"
include_recipe "gunicorn::default"

%w{emacs git-core rlwrap openjdk-6-jdk tmux curl tree unzip nginx}.each do |pkg|
  package pkg do
    action :install
  end
end

service "nginx" do
  enabled true
  running true
  supports :status => true, :restart => true, :reload => true
  action [:start, :enable]
end

python_virtualenv "/home/ubuntu/shopplyEnv" do
    owner "ubuntu"
    group "ubuntu"
    action :create
end


