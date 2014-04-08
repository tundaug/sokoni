ENV['RACK_ENV'] = 'test'

require 'rubygems'
require 'rack/test'
require 'rspec/expectations'
require 'capybara'
require 'capybara/rspec'
require 'capybara/cucumber'
require 'database_cleaner'

require File.expand_path  "./../../../app.rb", __FILE__
ActiveRecord::Base.logger.level = 1
begin
      DatabaseCleaner.strategy = :transaction
rescue NameError
      raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

Capybara.app = BlogApp
