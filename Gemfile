source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'jbuilder', '~> 2.7'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'rails', '~> 6.0.0'
gem 'sass-rails', '~> 5'
gem 'webpacker', '~> 4.0'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'database_cleaner', '~> 1.7'
  gem 'factory_bot_rails', '~> 5.0'
  gem 'rspec-rails', '= 4.0.0.beta2'
end

group :development do
  gem 'graphiql-rails'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
end

gem 'graphql', '~> 1.9'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
