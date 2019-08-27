class Api::V1::EventsController < Api::V1::BaseController
  def index
    render(json: Event.all)
  end


  end

  def create
    new_ticket = project.tickets.create(name: params[:name], user_id: user.id, description: params[:desc])
    render(json: Api::V1::TicketSerializer.new(new_ticket).serialized_json)
  end

  def update
    ticket = Ticket.find_by(name: params[:name])
    if params[:type] == "1"
      ticket.update(ticket_name)
    else
      ticket.update(ticket_desc)
    end
  end
end
