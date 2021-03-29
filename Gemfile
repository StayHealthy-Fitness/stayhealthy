# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.2'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use Active Model has_secure_password
gem 'bcrypt', '~> 3.1.7'
# Use for the database
gem 'postgresql', '~> 1.0'
# For token decoding/encoding
gem 'jwt', '~> 2.2', '>= 2.2.1'
# For the GraphQL API
gem 'graphql', '~> 1.9'
# Used for linting and formatting
gem 'rubocop', '~> 1.12.0', require: false
# Used to interface with our Algolia indexes
gem 'algoliasearch', '~> 1.6', '>= 1.6.1'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false
# Temporarily add to production env for rake task
gem 'faker', '~> 2.9'

group :development, :test do
  gem 'dotenv-rails'
  gem 'pry', '~> 0.12.2'
  gem 'pry-rails', '~> 0.3.9'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
