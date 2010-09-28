require 'rubygems'
require 'sinatra'

class App < Sinatra::Application
  get '/' do
    "Hello, Heroku!"
  end
end