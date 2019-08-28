class Api::V1::EventSerializer < Api::V1::BaseSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :event_type, :date, :frequency, :start_time, :end_time, :description
end
