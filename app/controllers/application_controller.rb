# Base application controller parent class
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_ability
    @ability ||= Ability.new(current_user)
  end
end

