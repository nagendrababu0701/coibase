source 'https://rubygems.org'

ruby "2.1.5"
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use sqlite3 as the database for Active Record
#gem 'sqlite3', group: [:development, :test]
#gem 'mysql2'#, group: [:development, :test]
gem 'mysql2', '~> 0.3.18', group: [:development, :test]

group :production do
	gem 'rails_12factor'
	gem 'pg'
end

gem 'devise'
gem "paperclip", "~> 4.2"
gem 'chain-ruby', '~> 2.3.0'
gem 'bitcoin-ruby', git: 'https://github.com/lian/bitcoin-ruby', branch: 'master', require: 'bitcoin'
gem 'coinbase'
gem 'rqrcode'
gem 'utf8-cleaner'
#gem 'rack-utf8_sanitizer'
gem 'rqrcode_png'
gem 'dragonfly'
gem 'sendgrid-rails', '~> 2.0'
#gem 'simple_captcha', :git => 'git://github.com/galetahub/simple-captcha.git'
gem 'simple_captcha2', require: 'simple_captcha'
gem 'pry'
gem 'activeadmin', github: 'activeadmin'
#gem 'font-awesome-rails'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'omniauth-coinbase'

#gem 'thredded', github: 'jayroh/thredded'

gem 'forem', :github => "radar/forem", :branch => "rails4"

gem 'will_paginate', '3.0.5'

group :assets do
  gem 'less'
end

gem 'bootstrap-sass', '~> 3.3.4'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
 

gem 'aws-sdk', '~> 1.61.0'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'quiet_assets'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

