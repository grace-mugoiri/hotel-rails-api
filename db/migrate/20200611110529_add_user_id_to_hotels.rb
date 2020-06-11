class AddUserIdToHotels < ActiveRecord::Migration[6.0]
  def change
    add_column :hotels, :user_id, :string
    add_column :hotels, :integer, :string
  end
end
