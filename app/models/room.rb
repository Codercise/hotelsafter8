class Room < ActiveRecord::Base
	belongs_to :hotel
	has_attached_file :image
end
