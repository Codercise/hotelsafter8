class RecreateBookingsTable < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :room_id
      t.string :customer_name
      t.string :customer_phonenumber
      t.string :booking_date
      t.timestamps
    end
  end
end