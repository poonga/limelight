source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use PostgreSQL as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Bootstrap forms/components
gem 'bootstrap', '~> 4.0.0'
gem 'bootstrap_form', git: "https://github.com/bootstrap-ruby/bootstrap_form.git", branch: "master"
gem 'bootstrap-social-rails'
gem 'font-awesome-rails'

gem 'jquery-rails'

# Slugging and permalink plugins for Active Record
gem 'friendly_id', '~> 5.1.0'
# Easy upload management for ActiveRecord
gem 'paperclip', '~> 5.2.0'
gem 'fog'

# User Authentication
gem 'devise'
gem 'omniauth-google-oauth2'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# Web page editor
gem 'summernote-rails', '~> 0.8.10.0'

# JS charting library
gem "chartkick"
gem "groupdate"

group :development, :test do
  gem 'faker', '~> 1.8.7'
  gem 'awesome_print'       # Nicely format fields of objects
  gem 'pry-nav'             # Debugger with 'next', 'continue' options
  gem 'dotenv-rails'
  gem 'rspec-rails'
end

group :test do
  gem 'capybara'            # User simulations
  gem 'factory_girl_rails'  # Fixtures
  gem 'guard-rspec'         # Runs specs automatically after saves
  gem 'database_cleaner'
  gem 'rails-controller-testing'
end

group :development do
  gem "better_errors"       # Replaces the standard Rails error page with a more useful error page
  gem "binding_of_caller"   # better_errors helper
  gem 'annotate'            # Summarize the current schema to ActiveRecord models
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do # Heroku requirements
  gem 'newrelic_rpm'        # App performance monitoring
  gem 'rails_12factor'      # Avoid Heroku deprecation warning
end
