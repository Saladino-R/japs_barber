class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :nom
      t.string :prenom
      t.string :adresse
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
