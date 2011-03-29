require 'rubygems'
require 'sinatra'
require 'haml'

get '/' do
  haml :index
end

get '/users' do
  haml :users
end