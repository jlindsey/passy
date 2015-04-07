# rubocop:disable Style/FileName
source "https://rubygems.org"

gem "rails", "4.2.1"
gem "sqlite3"

gem "slim-rails"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.1.0"
gem "jbuilder", "~> 2.0"
gem "bourbon"
gem "neat"

gem "sorcery"
gem "cancancan"
gem "bcrypt", "~> 3.1.7"
gem "paper_trail", "~> 4.0.0.beta2"
gem "bitmask_attributes"

group :development, :test do
  gem "byebug"
  gem "jazz_hands2"
  gem "awesome_print", git: "https://github.com/eoinkelly/awesome_print.git"
  gem "web-console", "~> 2.0"
  gem "spring"

  gem "rspec-rails"
  gem "spring-commands-rspec"
end

group :development do
  gem "guard", require: false
  gem "guard-rspec", require: false
  gem "guard-pow", require: false
  gem "guard-bundler", require: false
  gem "guard-bundler-audit", require: false
end

group :test do
  gem "simplecov"
  gem "shoulda-matchers", require: false
  gem "factory_girl"
  gem "database_cleaner"
  gem "faker"
end

