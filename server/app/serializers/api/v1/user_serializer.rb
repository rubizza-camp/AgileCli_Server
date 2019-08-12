class Api::V1::UserSerializer < Api::V1::BaseSerializer
  attributes :id, :name, :github, :created_at, :updated_at
end
