ActiveAdmin.register Room do

  form do |f|
    f.inputs "Details" do
      f.input :hotel, as: :select, collection: Hotel.all
      f.input :description
      f.input :beds, label: "How many beds?"
      f.input :image
    end
  end
  
end
