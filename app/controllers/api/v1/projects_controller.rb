class Api::V1::ProjectsController < Api::V1::BaseController
  before_action :fetch_project, only: [:show, :destroy, :update]

  def index
    render(json: Project.all)
  end

  def show
    @project ? ProjectSerializer.new(@project).serialized_json : create
  end

  # POST method
  def create
    @project = Project.new(name: params[:name])
    ProjectSerializer.new(@project).serialized_json if @project.save
  end

  def destroy
    @project.destroy
  end

  def update
    require 'pry'; binding.pry
    @project.update(project_params)
  end

  private

  def fetch_project
    @project = Project.find_by(name: params[:name])
  end

  def project_params
    {name: params[:new_name]}
    # params.permit(name: new_name)
  end
end
