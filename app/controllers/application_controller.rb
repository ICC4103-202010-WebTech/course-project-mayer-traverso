class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def current_user
    if current_user
      current_user
      #falta admin
    else
      User.new
    end
  end
  def home
    @events = Event.all
  end
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :lastname ])
  end
end
