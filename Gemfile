# Gemfile
source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'


gem "sinatra"
gem "sinatra-contrib"
gem "puma", "~> 5.0"
gem "sinatra-activerecord"

group :development do
  gem "better_errors"
  gem "binding_of_caller"
  gem "table_print"
  gem "appdev_support"
  gem "rest-client"  # Add this line to include the rest-client gem
end

group :development, :test do
  gem "grade_runner"
  gem "pry"
  gem "sqlite3", "~> 1.4"
end

group :test do
  gem "capybara"
  gem "draft_matchers"
  gem "rspec"
  gem "rspec-html-matchers"
  gem "webmock"
  gem "webdrivers"
  gem "i18n"
end
