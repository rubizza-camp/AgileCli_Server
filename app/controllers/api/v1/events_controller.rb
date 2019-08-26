class Api::V1::EventsController < Api::V1::BaseController
  def index
    render(json: Event.all)
  end

  def show
    event = Event.find(params[:id])
    render(json: Api::V1::TicketSerializer.new(event).serialized_json)
  end

  def create
    new_event = project.tickets.create(name: params[:name], user_id: user.id, description: params[:desc])
    render(json: Api::V1::TicketSerializer.new(new_event).serialized_json)
  end

  private

  def project
    @project ||= Project.find(params[:project_id])
  end

  def user
    @user ||= User.find_by(github_login: params[:user])
  end
end
