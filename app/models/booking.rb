class Booking < ApplicationRecord
  belongs_to :cut
  belongs_to :user

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :email, presence: true
end
