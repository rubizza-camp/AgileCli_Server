class Api::V1::TicketsController < Api::V1::BaseController
  def index
    render(json: Ticket.all)
  end

  def show
    ticket = Ticket.find_by(name: params[:id])
    render(json: Api::V1::TicketSerializer.new(ticket).serialized_json)
  end

  def create
    return unless check_role

    new_ticket = project.tickets.create(name: params[:name], user_id: user.id,
                                        description: params[:desc], status: params[:status].to_i)
    render(json: Api::V1::TicketSerializer.new(new_ticket).serialized_json)
  end

  def update
    type = params[:type]
    ticket = Ticket.find_by(name: params[:name])
    if type == "1"
      update_type_name(ticket)
    elsif type == "2"
      ticket.update(ticket_owner)
    elsif type == "3"
      ticket.update(ticket_status)
    else
      update_type_desc(ticket)
    end
  end

  private

  def check_role
    user.has_role?(:scrum_master, project)
  end

  def update_type_desc(ticket)
    return unless check_role

    ticket.update(ticket_desc)
  end

  def update_type_name(ticket)
    return unless check_role

    ticket.update(ticket_name)
  end

  def ticket_status
    { status: params[:status].to_i }
  end

  def ticket_owner
    { owner: params[:user] }
  end

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
