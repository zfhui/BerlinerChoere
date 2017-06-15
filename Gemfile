source 'https://rubygems.org'

ruby '2.3.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.2', '>= 4.2.5.1'

gem 'pg', '~> 0.18.4'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'jquery-turbolinks'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'devise', '~> 3.5', '>= 3.5.6'

gem 'simple_form', '~> 3.2', '>= 3.2.1'

gem 'font-awesome-sass', '~> 4.5'
gem 'bootstrap-sass', '~> 3.3.3'
gem 'autoprefixer-rails', '~> 6.3', '>= 6.3.3'

gem 'geocoder', '~> 1.3'

gem 'rmagick', '~> 2.16'
gem 'carrierwave', '~> 0.10.0'

gem "administrate", "~> 0.1.3"

gem 'figaro'

group :production do
  gem 'puma'
  gem 'rails_12factor'
  gem 'hide_heroku', '~> 0.0.1'
end

gem 'lockup'

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
  gem 'hirb'
  # gem 'pry-rails'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  # gem 'spring'
  gem 'guard-rspec'
  gem 'launchy'
end

group :test do
  gem 'rspec-rails', '~> 3.4', '>= 3.4.2'
  gem 'factory_girl_rails', '~> 4.6'
  gem 'faker', '~> 1.6', '>= 1.6.1'
  gem 'shoulda-matchers', '~> 3.1', '>= 3.1.1',
    require: false
end
