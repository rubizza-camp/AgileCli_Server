class Project < ApplicationRecord
  resourcify
  has_many :userproject
  has_many :users, through: :userproject
  has_many :tickets
  has_many :events
end
