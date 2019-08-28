class Ticket < ApplicationRecord
  resourcify
  belongs_to :user
  belongs_to :project
  enum status: { todo: 0, review: 1, merged: 2, in_progress: 3, done: 4, archived: 5 }
end
