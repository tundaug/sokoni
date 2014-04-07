ENV['RACK_ENV'] = 'test'

require 'rubygems'
require 'rack/test'
require 'rspec/expectations'
require 'capybara'
require 'capybara/rspec'
require 'capybara/cucumber'

require File.expand_path  "./../../../app.rb", __FILE__

Capybara.app = BlogApp