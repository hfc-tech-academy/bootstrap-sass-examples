source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.4'


# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# No one likes Turbolinks.
# gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]


gem "haml-rails"
gem "httparty"
group :development, :test do
  gem "sqlite3"
  gem "rspec"
  gem "rspec-rails"
  gem "rspec-autotest"
  gem "factory_girl_rails"
  gem "autotest-rails"
  gem "capybara"
end

group :test do
  gem "webmock"
end

group :production do
  gem "pg"
end

gem "happy_seed"
gem "dotenv-rails", groups: [:development, :test]
gem "rdiscount", groups: [:development, :test]
gem "unicorn"
gem "rails_12factor"
gem "bootstrap-sass"
gem "modernizr-rails"
gem "meta-tags", require: "meta_tags"