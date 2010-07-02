require 'rubygems'
require 'sinatra'

get '/' do
  'hello'
end

set :sass, {:style => :compact } # default Sass style is :nested
get '/stylesheet.css' do
  header 'Content-Type' => 'text/css; charset=utf-8'
  sass :stylesheet
end
