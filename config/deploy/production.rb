server "prod-decidim-participa-cloud.lxd", user: "ruby-data", roles: %w(app db web worker)
set branch: "master"
set :rails_env, "production"
