class UpdateUserJob < ApplicationJob
  queue_as :default

  def perform(user)
    puts "Updating user #{user.email}..."
    sleep 5
    puts "User #{user.email} updated!"
  end
end
