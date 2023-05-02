class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.text :description
      t.datetime :start_time
      t.references :user, null: false, foreign_key: true
      t.references :cut, null: false, foreign_key: true

      t.timestamps
    end
  end
end
