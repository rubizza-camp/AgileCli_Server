class Api::V1::TicketsController < Api::V1::BaseController
  def index
    render(json: Ticket.all)
  end

  def show
    ticket = Ticket.find(params[:id])
    render(json: Api::V1::TicketSerializer.new(ticket).serialized_json)
  end

  def create
    new_ticket = project.tickets.create(name: params[:name], user_id: user.id, description: params[:desc])
    render(json: Api::V1::TicketSerializer.new(new_ticket).serialized_json)
  end

  private

  def project
    @project ||= Project.find(params[:project_id])
  end

  def user
    @user ||= User.find_by(github_login: params[:user])
  end
end
