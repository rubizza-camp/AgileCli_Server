class Api::V1::UserprojectController < Api::V1::BaseController
  def index
    render(json: Userproject.all)
  end

  def show
    user = User.find_by(github_login: params[:id])
    current = Userproject.where(user_id: user.id)
    @projects = []
    current.each do |curr|
      @projects.push(Project.where(id: curr.project_id))
    end
    render(json: @projects)
  end
end
