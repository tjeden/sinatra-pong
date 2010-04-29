require 'rubygems'
require 'sinatra'
require 'haml'

set :views, File.dirname(__FILE__) + '/views'
  
get '/' do
  haml :index
end
