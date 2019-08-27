class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :project

  enum status: [:todo, :review, :merged, :in_progress, :done, :archived]
end
