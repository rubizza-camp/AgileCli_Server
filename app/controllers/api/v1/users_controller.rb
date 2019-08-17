class Api::V1::UsersController < Api::V1::BaseController
  def index
    render(json: User.all)
  end

  def show
    @user = User.find_by(github_login: params[:id])
    @user ? render(json: Api::V1::UserSerializer.new(@user).serialized_json) : create
  end

  # POST method
  def create
    @user = User.new(github_login: params[:id])
    render(json: Api::V1::UserSerializer.new(@user).serialized_json) if @user.save
  end
end
