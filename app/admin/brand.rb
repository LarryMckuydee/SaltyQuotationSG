ActiveAdmin.register Brand do

  permit_params :name,:add_on_entitled,shirt_type_ids:[]

  form do |f|
    inputs do
      f.input :name
      f.input :add_on_entitled,:as =>:select,collection:[["No",0],["Yes",1]]
      f.input :shirt_types,as: :select,collection: ShirtType.all.collect{|shirt_type|[shirt_type.name,shirt_type.id]}
    end
    f.actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
