source 'http://rubygems.org'

# basic rails gems
gem 'bundler', '~>1.0.0'
gem 'rails', '3.0.1'
gem 'mongoid', '2.0.0.beta.20'
gem 'bson_ext' # mongo c extensions
gem 'devise'
gem 'haml'

# application-specific gems

# development gems
group :development do
  # enable debugging with "rails server -u" or "rails server --debugger"
  gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'haml-rails'
  # for rails generate devise:views
  gem 'hpricot'
  gem 'ruby_parser'
end

# testing gems
group :test do
  gem 'capybara'
  gem 'cucumber-rails'
  gem 'launchy'    # So you can do Then show me the page
end
