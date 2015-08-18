ActiveAdmin.register WovenTag do

  permit_params :tag_charge,:start_quantity,:end_quantity

  form do |f|
    inputs do
      f.input :tag_charge, :label=>"Charge per Woven Tag "
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
