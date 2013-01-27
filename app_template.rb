gem 'devise'
gem 'rails_admin'
gem 'rails-i18n'

gem_group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
end

gem_group :test, :development do	
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'awesome_print'
  gem 'simplecov', :require => false
  gem 'simplecov-rcov', :require => false
  gem 'debugger'
  gem 'konacha'
end

run "budle install"

# setup rspec
generate "rspec:install"

# setup devise
generate "devise:install"
generate "devise User"
rake "db:migrate"

# setup rails_admin
generate "devise Admin"
rake "db:migrate"
generate "rails_admin:install", "admin rails_admin"
rake "db:migrate"

remove_file "public/index.html"
