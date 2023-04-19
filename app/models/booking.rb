class Booking < ApplicationRecord
  belongs_to :cut
  belongs_to :user

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true, uniqueness: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :email, presence: true, uniqueness: true
end
