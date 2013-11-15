# db/migrations/20120118012543_create_site_configuration.rb
 
class CreateSiteConfigurations < ActiveRecord::Migration
  def change
    create_table :site_configurations do |t|
      t.string  :key
      t.text    :value
      t.string  :form_type
      t.string  :form_collection_command
 
      t.timestamps
    end
 
    add_index :site_configurations, :key, unique: true
  end
end