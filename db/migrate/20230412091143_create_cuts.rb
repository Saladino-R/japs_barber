class CreateCuts < ActiveRecord::Migration[7.0]
  def change
    create_table :cuts do |t|
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
