class Api::V1::UsersController < Api::V1::BaseController
  def index
    render(json: User.all)
  end

  def show
    user = User.find_by(params[:github_login])
    render(json: Api::V1::UserSerializer.new(user).to_json)
  end
end
