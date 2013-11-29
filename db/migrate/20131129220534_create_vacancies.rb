class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.integer :room_id
      t.date :date
      t.integer :price

      t.timestamps
    end
  end
end
