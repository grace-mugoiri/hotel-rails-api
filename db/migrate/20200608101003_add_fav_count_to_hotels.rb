class AddFavCountToHotels < ActiveRecord::Migration[6.0]
  def change
    add_column :hotels, :favCount, :integer
  end
end
