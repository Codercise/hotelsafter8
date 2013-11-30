class AddPricesToVacancies < ActiveRecord::Migration
  def change
    add_column :vacancies, :hotel_price, :integer
    add_column :vacancies, :our_price, :integer
  end
end
