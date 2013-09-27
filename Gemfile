source 'https://rubygems.org'

gem 'rails', '4.0.0'
gem 'sqlite3', group: [:development, :test]
gem 'mysql2',  group: [:production]
gem 'haml-rails'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'websocket-rails'
gem 'kaminari'

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'erb2haml'

  gem 'guard-bundler'
  gem 'guard-migrate'
  gem 'guard-livereload'
  gem 'guard-pow' if /darwin/ =~ RUBY_PLATFORM
  gem 'guard-spring'
end

group :development, :test do
  gem 'debugger'
  gem 'pry-rails'
  gem 'pry-remote'
  gem 'pry-doc'
  gem 'pry-coolline'
  gem 'pry-stack_explorer'
  gem 'hirb'
  gem 'hirb-unicode'
  gem 'awesome_print'
end

group :test do
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'database_rewinder'
  gem 'factory_girl_rails'
  gem 'forgery'
  gem 'capybara'

  gem 'coveralls', require: false
end

group :doc do
  gem 'sdoc', require: false
end
