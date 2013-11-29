class AddAttachmentMasterImageToHotels < ActiveRecord::Migration
  def self.up
    change_table :hotels do |t|
      t.attachment :master_image
    end
  end

  def self.down
    drop_attached_file :hotels, :master_image
  end
end
