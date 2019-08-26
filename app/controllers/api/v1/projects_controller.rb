class Api::V1::ProjectsController < Api::V1::BaseController
  def index
    render(json: Project.all)
  end

  def show
    render(json: Api::V1::ProjectSerializer.new(project).serialized_json)
  end

  def create
    project = Project.create(name: params[:name])
    Userproject.create(user_id: user.id, project_id: project.id)
    render(json: Api::V1::ProjectSerializer.new(project).serialized_json)
  end

  def update
    proj = Project.find_by(name: params[:name])
    proj.update(project_params)
  end

  private

  def user
    @user = User.find_by(github_login: params[:current_user])
  end

  def project
    curr = Userproject.find_by(user_id: user.id)
    @project ||= Project.find_by(id: curr.project_id)
  end

  def project_params
    { name: params[:new_name] }
  end
end
