class Event < ApplicationRecord
  resourcify
  belongs_to :project
  enum event_type: { scrum: 0, retro: 1, planning: 2, review: 3 }
  enum frequency: { daily: 0, weekly: 1, monthly: 2, not_regular: 3 }
end
