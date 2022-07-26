source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'rails', '~> 7.0.3'

gem 'pg', '~> 1.1'

gem 'puma', '~> 5.0'

gem 'bcrypt', '~> 3.1.7'
gem 'jwt'

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'bootsnap', require: false

gem 'rack-cors'

gem 'rubocop'

gem 'simplecov', require: false, group: :test

gem 'interactor', '~> 3.0'

# gem 'rails-i18n'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails'
  gem 'shoulda-matchers', '~> 5.0'
end

group :development do
end
