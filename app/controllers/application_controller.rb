class ApplicationController < ActionController::Base
  helper_method :current_user
  def current_user
    id = session[:user_id]
    @current_user ||= User.find(id) if id
  end
end
