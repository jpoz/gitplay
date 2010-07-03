require 'rubygems'
require 'sinatra'
require 'haml'

get '/' do
  erb :index
end

get '/awesome' do
  haml :awesome
end

set :sass, {:style => :compact } # default Sass style is :nested
get '/stylesheet.css' do
  header 'Content-Type' => 'text/css; charset=utf-8'
  sass :stylesheet
end

