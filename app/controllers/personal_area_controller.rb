class PersonalAreaController < ApplicationController
  def cabinet
    @current_user = User.find(session[:user_id])
    @projects = @current_user.projects
  end
end
