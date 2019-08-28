class User < ApplicationRecord
  has_many :userproject
  has_many :projects, through: :userproject
  has_many :tickets
  enum role: { scrum_master: 0, product_owner: 1, team_member: 2 }
end
