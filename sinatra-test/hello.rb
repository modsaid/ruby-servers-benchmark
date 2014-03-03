require 'sinatra'

require File.expand_path(File.dirname(__FILE__) + "/../app/some_app")


get '/' do
  SomeApp.process
end
