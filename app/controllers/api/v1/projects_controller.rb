class Api::V1::ProjectsController < Api::V1::BaseController
  def index
    render(json: Project.all)
  end

  def show
    project = Project.find_by(params[:name])
    render(json: Api::V1::UserSerializer.new(project).to_json)
  end
end
