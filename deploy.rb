# config valid only for current version of Capistrano

#lock '3.6.1'

set :application, 'rails4-mysql-sample'
set :repo_url, 'https://github.com/kozharsky/rails4-mysql-sample.git'
set :user, 'ubuntu'

set :deploy_to, "/home/ubuntu/rails4-mysql-sample/rails4-mysql-sample/"

set :pty, true

set :format, :pretty

set :rbenv_ruby, '2.0.0-p648'

set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_roles, :all

#set :scm, :gitcopy
set :repository, "."
#set :scm, :none
set :deploy_via, :copy

set :current_path, '/home/ubuntu/rails4-mysql-sample/rails4-mysql-sample/'

set :linked_files, %w(config/database.yml)

#namespace :deploy do

#  desc "Create symlink to configured current path"
#  task :create_symlink do
#    on roles(:all) do
     # execute "rm -f #{fetch(:current_path)} && ln -s #{release_path} #{fetch(:current_path)}"
     # execute "cd /home/ubuntu/rails4-mysql-sample/rails4-mysql-sample && ln -s /home/ubuntu/rails4-mysql-sample/rails4-mysql-sample currents" 
#    end
#  end

#end


