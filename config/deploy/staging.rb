server "stag-participa-cloud", roles: %w(app db web worker)
set branch: "staging"
set :rails_env, "staging"
