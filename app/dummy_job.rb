class DummyJob
  @queue = :dummy_queue
  
  def self.perform(id)
    puts "Doing nothing useful in the middle of the night for id #{id}"
  end
end