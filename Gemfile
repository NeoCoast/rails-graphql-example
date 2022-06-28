source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.2', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '~> 1.4', require: false

gem 'graphql', '~> 1.10', '>= 1.10.9'
gem "graphql-preload", git: "https://github.com/Envek/graphql-preload.git"
gem "graphiql-rails", "~> 1.7"

gem 'devise', "~> 4.7"
gem 'devise-token_authenticatable', "~> 1.1"

gem "figaro", "~> 1.2"
# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', "~> 11.1", platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-rails', '~> 0.3'
  gem 'database_cleaner-active_record', "~> 1.8"
end

group :test do
  gem 'database_cleaner', '~> 1.8', '>= 1.6.2'
  gem 'factory_bot_rails', '~> 4.11', '>= 4.8.2'
  gem 'faker', '~> 1.9', '>= 1.8.7'
  gem 'rspec-rails', '~> 3.9', '>= 3.7.2'
  gem 'shoulda-matchers', '~> 3.1', '>= 3.1.2'
end

group :development do
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', "~> 2.1"
  gem 'spring-watcher-listen', '~> 2.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
