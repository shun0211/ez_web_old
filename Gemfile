source "https://rubygems.org"

ruby "3.2.2"

gem "rails", "~> 7.1.2"
gem "sprockets-rails"
gem "mysql2", "~> 0.5"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false
gem "active_decorator"
gem "active_hash"
gem "carrierwave", "~> 2.0"
gem 'dotenv-rails'
gem 'enum_help'
gem 'faraday'
gem 'firebase-admin-sdk'
gem 'fog-aws'
gem 'jwt'
gem 'kaminari'
gem 'rails-i18n', '~> 7.0.0'
gem 'rollbar'
gem 'ruby-openai'
gem 'seed-fu', github: 'shun0211/seed-fu', branch: 'support-rails-7'
gem "sidekiq-scheduler"
gem "sitemap_generator"
gem "slack-notifier"
gem "smarter_csv", require: false
gem "tailwindcss-rails", "~> 2.1"

group :production do
  gem 'unicorn'
end

group :development, :test do
  gem "debug", platforms: %i[ mri windows ]
end

group :development do
  gem "web-console"
  gem 'annotate'
  gem "rubocop"
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem 'committee-rails'
  gem 'factory_bot_rails'
  gem 'rspec-json_matcher'
  gem 'rspec-rails'
end
