class Api::V1::UserSerializer < Api::V1::BaseSerializer
    attributes :id, :name,  :github_login
end
