class ApplicationController < ActionController::Base
  before_action :set_user

  private

  def set_user
    @user = User.first
  end
  def home
    @events = Event.all
  end
  def search
    print "hola"
    @hola = "Hola mundo."
  end
end
