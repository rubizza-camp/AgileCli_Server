class Api::V1::ProjectsController < Api::V1::BaseController
  def index
    render(json: Project.all)
  end

  def show
    render(json: Api::V1::ProjectSerializer.new(project).serialized_json)
  end

  # POST method
  def create
    project = Project.create(name: params[:name])
    render(json: Api::V1::ProjectSerializer.new(project).serialized_json)
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
