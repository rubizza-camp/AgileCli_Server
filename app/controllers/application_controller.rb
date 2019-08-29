class ApplicationController < ActionController::Base
  helper_method :current_user
  def current_user
    # id = session[:user_id]
    @current_user = session[:user_id] if session[:user_id]
  end
end
