class Event < ApplicationRecord
  belongs_to :user
  belongs_to :project

  enum type: [:sprint, :scrum, :retro, :planning, :review]
  enum frequency: [:daily, :weekly, :monthly]
end
