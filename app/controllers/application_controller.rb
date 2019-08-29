class ApplicationController < ActionController::Base
  helper_method :current_user
  def current_user
    id = session[:user_id]
    if id
      @current_user ||= User.find(id)
    else
      @current_user = nil
    end
  end
end
