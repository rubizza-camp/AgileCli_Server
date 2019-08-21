class Api::V1::UsersController < Api::V1::BaseController
  def index
    render(json: Ticket.all)
  end

  def show
    @ticket = Ticket.find_by(github_login: params[:id])
    @ticket ? render(json: Api::V1::UserSerializer.new(@ticket).serialized_json) : create
  end

  # POST method
  def create
    @ticket = User.new
    render(json: Api::V1::UserSerializer.new(@ticket).serialized_json) if @ticket.save
  end
end
