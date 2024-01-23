class Service < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy  # Add this line

  validates :service_name, :description, :category, :price, :location, presence: true
  # price validation
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
