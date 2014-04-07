require 'sinatra'
require "sinatra/activerecord"
require './models/post'

set :environment, :development

class BlogApp < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  get '/' do
    haml :index
  end

end