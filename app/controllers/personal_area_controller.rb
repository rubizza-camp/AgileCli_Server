class PersonalAreaController < ApplicationController
  def cabinet
    if session[:user_id] == nil
      redirect_to '/'
    else
      @current_user = User.find(session[:user_id])
      @projects = @current_user.projects
    end
  end
end
