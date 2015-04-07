# Cancancan permissions model
class Ability
  include CanCan::Ability

  def initialize(user = nil)
    user ||= User.new

    unless user.persisted?
      # Unauthenticated / Guest user can't do anything
      cannot :manage, :all
      return
    end

    if user.admin?
      # Admin user can do everything
      can :manage, :all
      return
    end
  end
end

