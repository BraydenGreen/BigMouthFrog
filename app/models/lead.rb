class Lead < ApplicationRecord
  enum contacted: { 'yes': 1, 'no': 0 }

  has_many :notes, dependent: :destroy

  PHONE_REGEX = /(([0-9]*)|(([0-9]*)\.([0-9]*)))/

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  ZIP_REGEX = /(([0-9]*)|(([0-9]*)\.([0-9]*)))/

validates_presence_of :email, :name, :lead_source

validates :email, format: { with: EMAIL_REGEX, message: "Email must be valid" }

validates :zip, format: {with: ZIP_REGEX, message: "Zip must be vailid"}

validates :phone, format: {with: PHONE_REGEX, message: "Phone must be valid"}

  def self.recent
    order("created_at DESC")
  end
end
