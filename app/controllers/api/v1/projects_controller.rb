class Api::V1::ProjectsController < Api::V1::BaseController
  def index
    render(json: Project.all)
  end

  def show
    proj = Project.find_by(name: params[:id])
    render(json: Api::V1::ProjectSerializer.new(proj).serialized_json)
  end

  def create
    project = Project.create(name: params[:name])
    Userproject.create(user_id: user.id, project_id: project.id)
    user.add_role :scrum_master, project
    render(json: Api::V1::ProjectSerializer.new(project).serialized_json)
  end

  def update
    if user.has_role?(:scrum_master, project)
      proj = Project.find_by(name: params[:name])
      if params[:type] == "1"
        proj.update(project_name)
      else
        proj.update(project_desc)
      end
    end
  end

  private

  def user
    @user = User.find_by(github_login: params[:current_user])
  end

  def project
    curr = Userproject.find_by(user_id: user.id)
    @project ||= Project.find(curr.project_id)
  end

  def project_name
    { name: params[:new_name] }
  end

  def project_desc
    { description: params[:new_description] }
  end
end
