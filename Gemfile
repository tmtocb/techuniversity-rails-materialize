source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'rails', '~> 6.0.3', '>= 6.0.3.4'

gem 'bootsnap', '>= 1.4.2', require: false
gem 'devise'
gem 'faker'
gem 'jbuilder', '~> 2.7'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'rubocop', require: false
gem 'sass-rails', '>= 6'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 4.0'

group :development, :test do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'guard'
  gem 'guard-rspec', require: false
  gem 'pry-rails'
  gem 'rspec-rails', '~> 4.0.2'
end

group :development do
  gem 'brakeman'
  gem 'bullet'
  gem 'bundler-audit'
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'rails-controller-testing'
  gem 'shoulda-matchers', '~> 4.0'
end