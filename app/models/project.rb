class Project < ApplicationRecord
  has_many :userproject
  has_many :users, through: :userproject
  has_many :tickets
  has_many :events
end
# rubocop:enable Rails/HasManyOrHasOneDependent
