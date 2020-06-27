class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def set_user
    @user = User.first
  end
  def home
    @events = Event.all
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username,:name, :lastname ])
  end
end
