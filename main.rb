require 'rubygems'
require 'sinatra'
require 'haml'
require 'httparty'

get '/' do
  haml :index
end

get '/awesome' do
  haml :awesome
end

get '/post' do
  options = { :query => {
    :app_id => 2309869772,
    :composer_id => 'c4c2d51f22675753ab6740',
    :data => {:url  => 'http://www.butter.com' },
    :fb_dtsg => 'vgZL1',
    :post_form_id => '8d96098209d9b371a1aab14c9bd082b2',
    :post_form_id_source => "AsyncRequest",
    :stream_id  => 0
  }}
  response = HTTParty.post('http://www.facebook.com/ajax/composer/attachment.php?__a=1', options)
  response.inspect.gsub('<','&lt;')
end

set :sass, {:style => :compact } # default Sass style is :nested
get '/stylesheet.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :stylesheet
end

