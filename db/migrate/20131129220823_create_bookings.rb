class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :vacancy_id
      t.integer :user_id
      t.string :paypal_track_id
      t.float :amount_paid

      t.timestamps
    end
  end
end
