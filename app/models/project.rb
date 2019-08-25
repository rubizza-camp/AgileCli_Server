class Project < ApplicationRecord
  has_many :userproject
  has_many :users, through: :userproject
  has_many :tickets, through: :users
  has_many :events, through: :users
end
