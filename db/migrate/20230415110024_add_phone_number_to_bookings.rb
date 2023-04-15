class AddPhoneNumberToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :phone_number, :string
  end
end
