class Api::V1::EventsController < Api::V1::BaseController
  def index
    render(json: Event.all)
  end

  def show
    event = Event.find(params[:id])
    render(json: Api::V1::EventSerializer.new(event).serialized_json)
  end

  # rubocop: disable AbcSize
  def create
    new_event = project.events.create(description: params[:desc], date: params[:date],
                                      event_type: params[:event_type].to_i,
                                      start_time: params[:start_time], end_time: params[:end_time])
    render(json: Api::V1::EventSerializer.new(new_event).serialized_json)
  end
  # rubocop: enable AbcSize

  private

  def project
    curr = Userproject.find_by(user_id: user.id)
    @project ||= Project.find_by(id: curr.project_id)
  end

  def user
    @user = User.find_by(github_login: params[:current_user])
  end

  # def update
  #
  # end
end
