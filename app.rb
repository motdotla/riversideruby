require 'rubygems'
require 'sinatra'
require 'haml'
require 'rmeetup'

before do
  RMeetup::Client.api_key = "6b47764419734b346f14506a444f302a"
  @rmeetup = RMeetup::Client.fetch(:events, {:group_urlname => "riversideruby",:before => '1m'}).first
end

get '/' do
  haml :index
end

get '/members' do
  haml :members
end