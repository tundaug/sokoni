ENV['RACK_ENV'] = "test"

require "sinatra/activerecord"
require 'rack/test'
require 'capybara'
require 'capybara/dsl'

Dir["./models/*.rb"].each { |file| require file } 
require File.expand_path '../../app.rb', __FILE__
ActiveRecord::Base.logger.level = 1

module RSpecMixin
    include Rack::Test::Methods
    include Capybara::DSL
    def app()
        Sinatra::Application 
    end
end

RSpec.configure do |config|
    config.treat_symbols_as_metadata_keys_with_true_values = true
    config.run_all_when_everything_filtered = true
    config.filter_run :focus
    config.order = 'random'
    config.include RSpecMixin
end
