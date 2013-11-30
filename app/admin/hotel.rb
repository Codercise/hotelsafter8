ActiveAdmin.register Hotel do

  show do
    attributes_table do
      row :name
      row :full_address
      row :image do
        image_tag(hotel.master_image.url)
      end
    end

    table_for hotel.rooms.order('hotel_price DESC') do
      column "Rooms" do |room|
        room.beds
      end
      column "Description" do |room|
        room.description
      end
      column "Hotel Price" do |room|
        room.hotel_price
      end
      column "Our Price" do |room|
        room.our_price
      end      
    end
    active_admin_comments
  end

  index do
    column :name
    column :full_address
    default_actions
  end

  
  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :street, label: "Street address"
      f.input :city
      f.input :master_image
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
