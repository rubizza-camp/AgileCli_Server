class Event < ApplicationRecord
  belongs_to :project

  enum event_type: { sprint: 0, scrum: 1, retro: 2, planning: 3, review: 4 }
  enum frequency: { daily: 0, weekly: 1, monthly: 2 }
end
