class Api::V1::UserprojectController < Api::V1::BaseController
  def index
    render(json: Userproject.all)
  end

  def show
    initialize_user_and_projects
    render(json: @projects)
  end

  def update
    proj = Project.find_by(name: params[:project])
    Userproject.create(user_id: user.id, project_id: proj.id)
    render(json: Api::V1::ProjectSerializer.new(project).serialized_json)
  end

  private

  def user
    User.find_by(github_login: params[:new_user])
  end

  def project
    curr = Userproject.find_by(user_id: user.id)
    @project ||= Project.find_by(id: curr.project_id)
  end

  def initialize_user_and_projects
    user = User.find_by(github_login: params[:id])
    @projects = user.projects.all
  end
end
