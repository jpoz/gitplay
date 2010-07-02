require 'rubygems'
require 'sinatra'
require 'haml'

get '/' do
  haml :index
end

get '/awesome' do
  haml :awesome
end