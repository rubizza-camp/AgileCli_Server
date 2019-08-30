class Api::V1::UsersController < Api::V1::BaseController
  def index
    render(json: User.all)
  end

  def show
    @user = User.find_by(node: params[:id])
    render(json: Api::V1::UserSerializer.new(@user).serialized_json)
  end

  def create
    @user = User.new(github_login: params[:id])
    render(json: Api::V1::UserSerializer.new(@user).serialized_json) if @user.save
  end

  def update
    check_role
    role_id = params[:role_id]
    if role_id == 1
      user.add_role(:team_member, project)
    elsif role_id == 2
      user.add_role(:scrum_master, project)
    else
      user.add_role(:product_owner, project)
    end
  end

  private

  def user
    User.find_by(github_login: params[:name])
  end

  def project
    Project.find(params[:project_id])
  end

  def check_role
    user.remove_role(:scrum_master, project) if user.has_role?(:scrum_master, project)
    user.remove_role(:product_owner, project) if user.has_role?(:product_ower, project)
  end
end
