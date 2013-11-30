class Booking < ActiveRecord::Base


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  validates :room_id, presence: true
  validates :customer_name, presence: true
  validates :customer_phonenumber, presence: true
  validates :booking_date, presence: true
end
