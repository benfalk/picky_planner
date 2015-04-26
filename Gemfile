source 'https://rubygems.org'
ruby '2.2.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
gem 'pg'

gem 'bundler', '>= 1.8.4'

# User Authentication
gem 'devise'

# Pagination
gem 'kaminari'

# Slim templates [http://slim-lang.com/]
gem 'slim-rails'

# Build tables quick and easy in the view
gem 'table_cloth'

# Lib to easily allow creating dynamic many-to-one form fields
gem 'nested_form'

source 'https://rails-assets.org' do
  gem 'rails-assets-select2'
end

gem 'momentjs-rails', '>= 2.8.1'
gem 'bootstrap3-datetimepicker-rails', '~> 4.0.0'
gem 'chronic'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Better Form Options
gem 'simple_form'

# Javascript / CSS UI Framework
gem 'bootstrap-sass'

# Font icons
gem "font-awesome-rails"

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
gem 'unicorn'

# Use Capistrano for deployment
gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'capistrano3-unicorn'
  gem 'byebug'
  gem 'pry'
  gem 'rubocop'
  gem 'faker'
  gem 'rspec-rails'
  gem 'rspec-its'
  gem 'factory_girl_rails'
  gem 'quiet_assets'
  gem 'guard'
  gem 'guard-rspec', require: false
  gem 'guard-rubocop'
  gem 'web-console', '~> 2.0'
  gem 'spring'
end

group :test do
  gem 'cucumber-rails', require: false
  gem 'poltergeist'
  gem 'database_cleaner'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers', github: 'thoughtbot/shoulda-matchers'
end
