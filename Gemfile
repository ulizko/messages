source 'https://rubygems.org'

gem 'rake'
gem 'hanami',       '~> 1.0'
gem 'hanami-model', '~> 1.0'
gem 'hanami-utils'

gem 'pg'
gem "core_ext"
gem 'sidekiq'
gem 'puma'
group :development do
  # Code reloading
  # See: http://hanamirb.org/guides/applications/code-reloading
  gem 'shotgun'
  gem 'pry'
  gem 'pry-byebug'
end

group :test, :development do
  gem 'dotenv', '~> 2.0'
end

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'timecop'
end

group :production do
  # gem 'puma'
end
