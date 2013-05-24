source 'https://rubygems.org'

#ruby=jruby-1.7.3
ruby '1.9.3', engine: 'jruby', engine_version: '1.7.3'

gem 'rails', '3.2.13'
gem 'jruby-openssl'
gem 'jquery-rails'

group :production do
  gem 'activerecord-jdbcpostgresql-adapter'
  gem 'puma'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyrhino'
  gem 'uglifier', '>= 1.0.3'
end

group :test, :development do
  gem 'activerecord-jdbcsqlite3-adapter'
  gem 'rspec-rails', "~> 2.0"
end

group :test do
  gem 'selenium-webdriver'
  gem 'capybara'
  gem 'guard-rspec'
end
