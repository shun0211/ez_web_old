# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.2.2'

gem 'active_decorator'
gem 'active_hash'
gem 'bootsnap', require: false
gem 'carrierwave', '~> 2.0'
gem "dartsass-rails"
gem 'dotenv-rails'
gem 'enum_help'
gem 'faraday'
gem 'firebase-admin-sdk'
gem 'fog-aws'
gem 'importmap-rails'
gem 'jbuilder'
gem 'jwt'
gem 'kaminari'
gem 'mysql2', '~> 0.5'
gem 'puma', '>= 5.0'
gem 'rails', '~> 7.1.2'
gem 'rails-i18n', '~> 7.0.0'
gem 'rollbar'
gem 'ruby-openai'
gem 'seed-fu', github: 'shun0211/seed-fu', branch: 'support-rails-7'
gem 'sidekiq-scheduler'
gem 'sitemap_generator'
gem 'slack-notifier'
gem 'smarter_csv', require: false
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'tailwindcss-rails', '~> 2.1'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[windows jruby]

group :production do
  gem 'unicorn'
end

group :development, :test do
  gem 'debug', platforms: %i[mri windows]
end

group :development do
  gem 'annotate'
  gem 'rubocop'
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'committee-rails'
  gem 'factory_bot_rails'
  gem 'rspec-json_matcher'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
end
