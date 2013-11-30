ActiveAdmin.register Hotel do

  
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
  
  form do |f|
      f.inputs "Details" do
        f.input :name
        f.input :street
        f.input :city
        f.input :contact_name
        f.input :contact_number
        f.input :contact_email
      end

      f.inputs "Rooms" do
        f.has_many :rooms do |ff|
          ff.input :description
          ff.input :beds, label: "How many beds?"
          ff.input :image
        end
      end
      f.actions
  end
end
