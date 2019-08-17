class Api::V1::ProjectsController < Api::V1::BaseController

  def index
    render(json: Project.all)
  end

  def show
    render(json: ProjectSerializer.new(project).serialized_json) 
  end

  # POST method
  def create
    project = Project.new(name: params[:name])
    render(json: ProjectSerializer.new(project).serialized_json) if project.save
  end

  def destroy
    Project.find_by(name: params[:id]).destroy
  end

  def update
    project.update(project_params)
  end

  private

  def project
    @project ||= Project.find_by(name: params[:name])
  end

  def project_params
    { name: params[:new_name] }
  end
end
