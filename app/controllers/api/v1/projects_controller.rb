class Api::V1::ProjectsController < Api::V1::BaseController
  before_action :fetch_project, only: [:show, :destroy, :update]

  def index
    render(json: Project.all)
  end

  def show
    @project ? render(json: Api::V1::ProjectSerializer.new(@project).to_json) : create
  end

   # GET method
  # def new
  #   @project = Project.new
  # end

  # POST method
  def create
    @project = Project.new(name: params[:name])
    render(json: Api::V1::ProjectSerializer.new(@project).to_json) if @project.save
  end

  def destroy

    @project.destroy
  end

  def update
    @project.update_attributes(name: new_name)
  end

  private

  def fetch_project
    
    @project = Project.find_by(name: params[:name])
  end

  def project_params
    params.require(:project).permit(:id, :name, :new_name)
  end

end
