class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def about
    UpdateUserJob.perform_later(current_user)
  end
end
