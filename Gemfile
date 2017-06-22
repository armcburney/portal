source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

ruby '2.4.1'

gem 'coffee-rails', '~> 4.2'
gem 'dotenv-rails', groups: %i[development test]
gem 'friendly_id', '~> 5.1.0'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'json'
gem 'mathjax-rails'
gem 'paperclip', '~> 5.0.0'
gem 'pg'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.1'
gem 'redcarpet'
gem 'rspec-rails', '~> 3.5'
gem 'sass-rails', '~> 5.0'
gem 'slim-rails'
gem 'turbolinks', '~> 5'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'uglifier', '>= 1.3.0'
gem 'vine'
gem 'vital'
gem 'webpacker', '~> 2.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'foreman'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'rails-controller-testing'
  gem 'simplecov', require: false
end
