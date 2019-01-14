# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, "participa_cloud"
set :repo_url, "git@github.com/alabs/participa.cloud.git"

set :deploy_to, "/home/ruby-data/app"

set :rbenv_type, :user
set :delayed_job_workers, 1
set :rbenv_ruby, '2.5.3'

append :linked_files, "config/application.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system", "public/uploads"


set :puma_bind, "tcp://0.0.0.0:3000"
set :puma_user, fetch(:user)
append :rbenv_map_bins, 'puma', 'pumactl'
