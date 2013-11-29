class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :street
      t.string :city
      t.float :latitude
      t.float :longitude
      t.string :contact_name
      t.string :contact_number
      t.string :contact_email

      t.timestamps
    end
  end
end
