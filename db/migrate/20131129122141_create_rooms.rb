class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :hotel_id
      t.string :description
      t.string :beds

      t.timestamps
    end
  end
end
