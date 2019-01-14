# Load DSL and set up stages
require "capistrano/setup"

# Include default deployment tasks
require "capistrano/deploy"

require "capistrano/scm/git"

require "capistrano/bundler"
require "capistrano/puma"
require "capistrano/rails/assets"
require "capistrano/rails/migrations"
require "capistrano/rbenv"
require 'capistrano/sidekiq'

install_plugin Capistrano::Puma
install_plugin Capistrano::SCM::Git
# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
