ActiveAdmin.register Hotel do

  

  
  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :street, label: "Street address"
      f.input :city
      f.input :contact_name
      f.input :contact_number
      f.input :contact_email
    end

    f.inputs "Rooms" do
      f.has_many :rooms do |ff|
        ff.input :description
        ff.input :beds, label: "How many beds?", as: :select, collection: ["Queen bed", "2 single beds"]
        ff.input :image
        ff.input :hotel_price
        ff.input :our_price
      end
    end
    f.actions
  end

  # def permitted_params
  #   params.permit(:hotel=>[:name, :street, :city, :contact_email, :contact_number, :contact_name, rooms_attributes: []])
  # end

  # controller do
  #   def resource_params
  #   return [] if request.get?
  #   [ params[active_admin_config.resource_class.name.underscore.to_sym].permit! ]
  #   end
  # end
end
