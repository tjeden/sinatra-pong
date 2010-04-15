require File.join(File.dirname(__FILE__), '..', '..', 'pong')

require 'capybara'
require 'capybara/cucumber'
require 'spec'

World do

  Capybara.app = Sinatra::Application

  include Capybara
  include Spec::Expectations
  include Spec::Matchers
end
