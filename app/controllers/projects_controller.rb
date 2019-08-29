class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
    @tickets = @project.tickets
    @events = @project.events
  end
end
