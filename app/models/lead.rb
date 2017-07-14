class Lead < ApplicationRecord
  enum contacted: { 'yes': 1,'1': 1, 'no': 0, '0': 0 }

  has_many :notes, dependent: :destroy

  validates_presence_of :email, :name, :lead_source

  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "Email must be valid" }

  validates :zip, format: {with: /(([0-9]*)|(([0-9]*)\.([0-9]*)))/, message: "Zip must be vailid"}

  validates :phone, format: {with: /(([0-9]*)|(([0-9]*)\.([0-9]*)))/, message: "Phone must be valid"}

  def self.recent
    order("created_at DESC")
  end
end
