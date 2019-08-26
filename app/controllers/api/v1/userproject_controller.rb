class Api::V1::UserprojectController < Api::V1::BaseController
  def index
    render(json: Userproject.all)
  end

  def show
    initialize_user_and_projects
    render(json: @projects)
  end

  private

  def initialize_user_and_projects
    @user = User.find_by(github_login: params[:id])
    current = Userproject.where(user_id: @user.id)
    @projects = []
    current.each { |curr| @projects.push(Project.where(id: curr.project_id)) }
  end
end
