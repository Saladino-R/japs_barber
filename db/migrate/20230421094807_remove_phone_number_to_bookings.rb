class RemovePhoneNumberToBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :phone_number, :string
  end
end
