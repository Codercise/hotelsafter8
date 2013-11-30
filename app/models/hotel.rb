class Hotel < ActiveRecord::Base
	has_many :rooms
	accepts_nested_attributes_for :rooms

	geocoded_by :full_address
	after_create :geocode

	def full_address
		[self.street, self.city, "Australia"].join(", ")
	end
end
