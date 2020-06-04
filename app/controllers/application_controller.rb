class ApplicationController < ActionController::Base
  before_action :set_user

  private

  def set_user
    @user = User.first
  end
  def home
    @events = Event.all
  end
end
