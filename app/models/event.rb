class Event < ApplicationRecord
  resourcify
  belongs_to :project
  enum event_type: { scrum: 0, retro: 1, planning: 2, review: 3 }
end
