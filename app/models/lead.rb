class Lead < ApplicationRecord
  enum contacted: { 'yes': 1,'1': 1, 'no': 0, '0': 0 }

  has_many :notes, dependent: :destroy

  validates_presence_of  :name, :lead_source, :zip, :phone

  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "must be valid" }

  validates :zip, format: {with: /(([0-9]*)|(([0-9]*)\.([0-9]*)))/, message: "must be vailid"}

  validates :phone, format: {with: /(([0-9]*)|(([0-9]*)\.([0-9]*)))/, message: "must be valid"}

  def self.recent
    order("created_at DESC")
  end
end
