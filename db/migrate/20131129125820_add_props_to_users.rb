class AddPropsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :gender, :string
    add_column :users, :birthdate, :string
    add_column :users, :location_id, :integer
  end
end
