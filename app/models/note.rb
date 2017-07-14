class Note < ApplicationRecord
  belongs_to :user
  belongs_to :lead

  validates :body, presence: true, length: { minimum: 1, maximum: 1000 }

  after_create_commit { NoteBroadcastJob.perform_later(self) }
end
