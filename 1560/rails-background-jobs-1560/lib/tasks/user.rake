namespace :user do
  desc "Update all users with clearbit API"
  task update_all: :environment do
    users = User.all
    users.each do |user|
      UpdateUserJob.perform_later(user)
    end
  end

  task update: :environment do
    user = User.find(ENV["USER_ID"])
    UpdateUserJob.perform_later(user)
  end
end
