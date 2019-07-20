class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :require_login, only: [:welcome]
  
  helper_method :current_user


  #return name of current user, nil if no current user
  def current_user
      session[:name]
  end
  
  def welcome
  end 

  private
  
  def require_login
    redirect_to login_path unless current_user
  end   
end
