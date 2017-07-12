class Lead < ApplicationRecord
  enum contacted: { 'yes': 1, 'no': 0 }

  has_many :notes, dependent: :destroy


  

  def self.recent
    order("created_at DESC")
  end
end
