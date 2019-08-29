class User < ApplicationRecord
  rolify
  has_many :userproject
  has_many :projects, through: :userproject
  has_many :tickets
end
