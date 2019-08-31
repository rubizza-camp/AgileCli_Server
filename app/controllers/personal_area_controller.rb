class PersonalAreaController < ApplicationController
  def cabinet
    @current_user = User.find(session[:user_id])
    @projects = @current_user.projects
  rescue ActiveRecord::RecordNotFound
    redirect_to "/"
  end
end
