ActiveAdmin.register ShirtTypeFitRelation do

  permit_params :shirt_type_id,:fit_id,:price,:start_quantity,:end_quantity

  form do |f|
    f.inputs do
      f.input :shirt_type_id, as: :select,collection:ShirtType.all.collect{|shirt_type| [shirt_type.name,shirt_type.id]}
      f.input :fit_id, as: :select,collection:Fit.all.collect{|fit| [fit.name,fit.id]}
      f.input :price
      f.input :start_quantity
      f.input :end_quantity
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
