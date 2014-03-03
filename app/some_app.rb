require File.expand_path(File.dirname(__FILE__) + "/dummy_job")
require 'resque'

class SomeApp

  def self.process
    Resque.enqueue(DummyJob, rand(50))
    return "Just woke up!"
  end

end