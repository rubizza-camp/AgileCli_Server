class Api::V1::EventSerializer < Api::V1::BaseSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :event_type, :description, :date, :frequency, :time
end
