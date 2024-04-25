class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_commit :update_user, on: :create

  def myself
    puts self.email
  end

  private

  def update_user
    UpdateUserJob.perform_later(self)
  end
end
