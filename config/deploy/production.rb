server "prod-participa-cloud", roles: %w(app db web worker)
set branch: "master"
set :rails_env, "production"
