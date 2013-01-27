# test
gem_group :test, :development do	
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

# bundle install
run "budle install"

# setup rspec
generate "rspec:install"

