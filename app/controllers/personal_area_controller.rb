class PersonalAreaController < ApplicationController
  def cabinet
    @projects = Project.all
  end
end
