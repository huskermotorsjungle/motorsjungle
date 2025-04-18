class CreateListings < ActiveRecord::Migration[7.1]
  def change
    create_table :listings do |t|
      t.integer :year
      t.string :make
      t.string :model
      t.integer :odometer
      t.decimal :price
      t.string :photo

      t.timestamps
    end
  end
end
