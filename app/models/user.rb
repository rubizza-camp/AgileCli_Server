# rubocop:disable Rails/HasManyOrHasOneDependent

class User < ApplicationRecord
  has_many :userproject
  has_many :projects, through: :userproject
  has_many :tickets
  has_many :events

  enum role: [:scrum_master, :product_owner, :team_member]
end
# rubocop:enable Rails/HasManyOrHasOneDependent
