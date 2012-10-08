include_recipe "build-essential"
include_recipe "python::default"
include_recipe "gunicorn::default"
include_recipe "elasticsearch::default"

%w{emacs git-core rlwrap openjdk-6-jdk tmux curl tree unzip nginx python-setuptools python-dev build-essential supervisor}.each do |pkg|
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
    interpreter "python2.7"
    owner "ubuntu"
    group "ubuntu"
    action :create
end


