class Api::V1::TicketSerializer < Api::V1::BaseSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :name, :description, :status, :owner
end
