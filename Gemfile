if RUBY_VERSION =~ /1.9/
  Encoding.default_external = Encoding::UTF_8
end

source 'https://rubygems.org'

gem 'rails', '3.2.2'
gem "twilio-ruby"
# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
gem 'haml', '~> 3.1.4'
gem 'draper', '~> 0.10.0'
gem 'mongoid', "~> 2.4.3"
gem "bson_ext", "~> 1.5"
gem "settingslogic", "~> 2.0.8"
gem "inherited_resources", "~> 1.3.0"
gem 'jquery-rails'
gem "uuid"

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem "compass", "~> 0.11.7"
  gem 'uglifier', '>= 1.0.3'
end

group :test, :development do
  gem 'rspec-rails', '~> 2.8.1'
  gem 'cucumber', '~> 1.1.4'
  gem 'cucumber-rails', '~> 1.2.1'
  gem 'shoulda', '~> 2.11.3'
  gem 'factory_girl', '~> 2.5.0'
  gem 'factory_girl_rails', '~> 1.6.0'
  gem 'database_cleaner'
  gem 'ruby-debug19'
  gem "guard"
  gem "growl", "~> 1.0.3"
  gem "guard-rspec"
  gem "faker"
  gem "fakeweb"
  gem "launchy"
  gem "capistrano"
  gem "capistrano-ext"
  gem "timecop"
  gem "mocha"
  gem "mongoid-rspec", "~> 1.4.4"
end

group :production do
  # for precompiling assets
  gem 'therubyracer'
end
