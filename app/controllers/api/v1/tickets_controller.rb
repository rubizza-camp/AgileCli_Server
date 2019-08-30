class Api::V1::TicketsController < Api::V1::BaseController
  def index
    render(json: Ticket.all)
  end

  def show
    ticket = Ticket.find_by(name: params[:id])
    render(json: Api::V1::TicketSerializer.new(ticket).serialized_json)
  end

  def create
    if user.has_role?(:scrum_master, project) || user.has_role?(:product_owner, project)
      new_ticket = project.tickets.create(name: params[:name], user_id: user.id, description: params[:desc])
      render(json: Api::V1::TicketSerializer.new(new_ticket).serialized_json)
    end
  end

  def update
    if user.has_role?(:scrum_master, project) || user.has_role?(:product_owner, project)
      ticket = Ticket.find_by(name: params[:name])
      if params[:type] == "1"
        ticket.update(ticket_name)
      else
        ticket.update(ticket_desc)
      end
    end
  end

  private

  def project
    @project ||= Project.find(params[:project_id])
  end

  def user
    @user ||= User.find_by(github_login: params[:user])
  end

  def ticket_name
    { name: params[:new_name] }
  end

  def ticket_desc
    { description: params[:new_description] }
  end
end
