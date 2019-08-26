class Api::V1::TicketsController < Api::V1::BaseController
  def index
    render(json: Ticket.all)
  end

  def show
    render(json: Api::V1::TicketSerializer.new(ticket).serialized_json)
  end

  def create
    require 'pry'; binding.pry
    new_ticket = project.tickets.create(name: params[:name], user_id: user.id, description: params[:desc])
    render(json: Api::V1::TicketSerializer.new(new_ticket).serialized_json)
  end

  def

  private

  def project
    @project ||= Project.find(params[:project_id])
  end

  def user
    @user ||= User.find_by(github_login: params[:user])
  end
end
