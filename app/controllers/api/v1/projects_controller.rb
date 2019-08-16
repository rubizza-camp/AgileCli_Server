class Api::V1::ProjectsController < Api::V1::BaseController
  def index
    render(json: Project.all)
  end

  def show
    @project = Project.find_by(name: params[:id])
    @project ? render(json: Api::V1::ProjectSerializer.new(@project).to_json) : create
  end

   # GET method
   def new
    @project = Project.new
  end

  # POST method
  def create
    @project = Project.new(name: params[:id])
    render(json: Api::V1::ProjectSerializer.new(@project).to_json) if @project.save
  end
end
