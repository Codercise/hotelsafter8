class Room < ActiveRecord::Base
	belongs_to :hotel
	has_attached_file :image

	# validates :hotel_id, presence: true
	# validates :description, presence: true
	validates :beds, presence: true
	
end
