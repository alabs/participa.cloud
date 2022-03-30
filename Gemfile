# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION

gem "decidim", "0.24.3"
gem "decidim-consultations", "0.24.3"

gem "airbrake", "~> 5.0"
gem "bootsnap", "~> 1.4"
gem "deface", "~> 1.4"
gem "faker", "~> 1.9"
gem "figaro", "~> 1.1"
gem "puma", "~> 5.6"
gem "redis-namespace"
gem "sidekiq"
gem "uglifier", "~> 4.1"
gem "loofah", "~> 2.3.1"


group :production do
  gem 'delayed_job_active_record'
  gem "daemons"
  gem "listen", "~> 3.1"
  gem "letter_opener_web", "~> 1.3"
end

group :development, :test do
  gem "byebug", "~> 11.0", platform: :mri
  gem "rspec-rails", "~> 3.8"
  gem "rubocop", "~> 0.92.0"
  gem "decidim-dev", "0.24.3"
  gem "nokogiri", ">= 1.10.8"
end

group :development do	
  gem "capistrano", "~> 3.10"
  gem "capistrano-rails", "~> 1.4"
  gem "capistrano-rbenv", "~> 2.1"
  gem "capistrano-sidekiq", "1.0"
  gem "letter_opener_web", "~> 1.3"
  gem "listen", "~> 3.1"
  gem "spring", "~> 2.0"
  gem "spring-watcher-listen", "~> 2.0"
  gem "web-console", "~> 3.5"
end
