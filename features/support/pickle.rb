#require 'factory_girl'

#require 'pickle/adapters/data_mapper'
require 'dm-core'
require 'pickle/world'


Pickle.configure do |config|
  config.adapters = [ DataMapper::Resource]
end