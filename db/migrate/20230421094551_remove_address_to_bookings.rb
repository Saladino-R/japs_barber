class RemoveAddressToBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :address, :string
  end
end
