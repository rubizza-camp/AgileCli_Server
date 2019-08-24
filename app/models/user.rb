# rubocop:disable Rails/HasAndBelongsToMany

class User < ApplicationRecord
  has_and_belongs_to_many :projects
end
# rubocop:enable Rails/HasAndBelongsToMany
