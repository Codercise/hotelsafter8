class AddPricesToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :hotel_price, :integer
    add_column :rooms, :our_price, :integer
  end
end
