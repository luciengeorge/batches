class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
      # scope.where(user: user) # => Restaurant.where(user: current_user)
    end
  end

  def show?
    true
  end

  # def new?
  #   true
  # end

  def create?
    true
  end

  # def edit?
  #   # the user who owns the restaurant can edit it
  #   # the current_user should be the owner of the restaurant
  #   # user => current_user
  #   # record => @restaurant
  #   # record.user == user
  #   if record.user == user
  #     return true
  #   else
  #     return false
  #   end
  # end

  def update?
    if record.user == user || user.admin?
      return true
    else
      return false
    end
  end

  def destroy?
    record.user == user || user.admin?
  end
end
