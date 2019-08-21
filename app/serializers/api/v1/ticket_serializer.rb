class Api::V1::ProjectSerializer < Api::V1::BaseSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :project_id, :status_id, :title, :description, :estimation, :created_at, :updated_at
end
