class Api::BaseController < ActionController::API
  include CanCan::ControllerAdditions

  def current_user
  end
end
