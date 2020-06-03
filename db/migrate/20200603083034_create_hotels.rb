class CreateHotels < ActiveRecord::Migration[6.0]
  def change
    create_table :hotels do |t|
      t.integer :rooms
      t.integer :bedrooms
      t.boolean :roomservice

      t.timestamps
    end
  end
end
