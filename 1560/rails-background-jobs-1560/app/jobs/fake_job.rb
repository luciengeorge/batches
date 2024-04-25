class FakeJob < ApplicationJob
  queue_as :default

  def perform
    puts "Running fake job..."
    sleep 3
    puts "Fake job completed!"
  end
end
