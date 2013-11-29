class Location < ActiveRecord::Base

  geocoded_by :full_address
  after_create :geocode

  def full_address
  	[self.city, self.state, "Australia"].join(", ")
  end
end
