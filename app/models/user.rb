class User < ApplicationRecord
  has_many :userproject
  has_many :projects, through: :userproject
  has_many :tickets, through: :projects
  has_many :events, through: :projects
end
