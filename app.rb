require 'sinatra'
require 'sinatra/reloader' if development?
require 'sass'
require 'slim'
require 'uglifier'
require 'coffee_script'
require 'sinatra/contrib'


configure :staging do
  enable :reloader
end


configure do
  set :scss, { :style => :expanded, :debug_info => false }
end

get '/styles.scss' do
  scss :styles
end

get '/' do
  slim :index
end

get '/contact' do
  slim :contact
end

