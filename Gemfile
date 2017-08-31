source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.5'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', git: 'https://github.com/codahale/bcrypt-ruby.git', :require => 'bcrypt'

# dotenv for development and test?
gem 'dotenv-rails', groups: [:development, :test]

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'spring'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# user stuff
gem 'devise', '4.2.1'
gem 'petergate', '~> 1.7'

# front-end gems
gem 'bootstrap', '~> 4.0.0.beta'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.2'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'

# friendlyID
gem 'friendly_id', '~> 5.1'

# Pagination
gem 'kaminari', '~> 1.0', '>= 1.0.1'

# WeChat
gem 'wechat', '~> 0.8.11'
gem 'redis'
gem 'omniauth-wechat-oauth2', '~> 0.1.0'

# Carrierwave for uploading files
gem 'carrierwave', '~> 1.1'
gem 'mini_magick', '~> 4.8'

# cocoon for jquery forms
gem 'cocoon', '~> 1.2', '>= 1.2.10'

# gritter for notifications
gem 'gritter', '~> 1.2'

# for markdown
gem 'redcarpet', '~> 3.4'