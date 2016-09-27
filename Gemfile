source 'https://rubygems.org'

ruby '2.3.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
gem 'pg'
gem "codeclimate-test-reporter", group: :test, require: nil
# Use Puma as the app server
gem 'puma', '~> 3.0'
gem 'coveralls', require: false
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
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'faker'
gem 'devise'
gem 'jquery-datatables-rails', '~> 3.4.0'
#primary icons source
gem "font-awesome-rails"

#For .scss lint yml file
gem 'scss_lint', require: false

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'better_errors'
  gem 'bullet' #License: MIT
  gem 'pronto'
  gem 'pronto-rubocop', require: false
  gem 'pronto-flay', require: false
  gem 'pronto-brakeman', require: false
  gem 'fasterer'
  gem 'guard-rspec', require: false
end

group :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails', '~> 3.5'
  gem 'pry-byebug'
  gem 'rails-pry'
  gem 'capybara' #License: MIT
  gem 'capybara-screenshot' #License: MIT
  gem 'database_cleaner' #License: MIT
  gem 'launchy', '>= 2.4', '>= 2.4.3'
  gem 'email_spec' #License: MIT
  gem 'rspec-retry' #License: MIT
  gem 'selenium-webdriver' #License: Apache
  gem 'simplecov', require: false #License: MIT
  # gem 'shoulda-matchers' #License: MIT
  gem 'shoulda', '~> 3.5'
  gem 'brakeman' #License: MIT
  gem 'rubocop' #License: MIT
  gem 'rails-controller-testing' #License: MIT
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
