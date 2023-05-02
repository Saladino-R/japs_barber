class Booking < ApplicationRecord
  belongs_to :cut
  belongs_to :user

  validates :description, presence: true, :length => { :maximum => 200 }
  validates :start_time, presence: true

  # private

  # def not_too_many_lines
  #   if self.description.lines.count > 10
  #     errors.add :description, "has too many lines"
  #   end
  # end

end
