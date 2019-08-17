class Api::V1::ProjectSerializer < Api::V1::BaseSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :name, :description
end
