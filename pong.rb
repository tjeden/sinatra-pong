require 'rubygems'
require 'sinatra'
require 'haml'
require "dm-core"
require "digest/sha1"
require 'rack-flash'
require "sinatra-authentication"

use Rack::Session::Cookie, :secret => 'A1 sauce 1s so good you should use 1t on a11 yr st34ksssss'
use Rack::Flash

set :views, File.dirname(__FILE__) + '/views'
  
configure do
  DataMapper.setup(:default, 'sqlite3::memory:')
end

DmUser.auto_migrate!

get '/' do
  haml :index
end

