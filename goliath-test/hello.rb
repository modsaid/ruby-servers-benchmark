require 'goliath'
require File.expand_path(File.dirname(__FILE__) + "/../app/some_app")

class Hello < Goliath::API
  def response(env)
    puts "getting new request"
    response = SomeApp.process
    puts "responding"
    [200, {}, response]
  end
end
