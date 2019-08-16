class Project < ApplicationRecord

  validates :name, uniqueness: true, presense: true
end
