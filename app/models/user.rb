class User < ApplicationRecord
  rolify
  has_many :userproject
  has_many :projects, through: :userproject
  has_many :tickets

  after_create :assign_default_role

  def assign_default_role
    self.add_role(:team_member) if self.roles.blank?
  end
end
