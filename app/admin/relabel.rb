ActiveAdmin.register Relabel do

  permit_params :relabel_charge,:start_quantity,:end_quantity

  index do
    selectable_column
    id_column
    column "Charge Per Relabelling", :relabel_charge
    column "Start Quantity",:start_quantity
    column "End Quantity",:end_quantity
    column "Created At",:created_at
    column "Updated At",:updated_at
    actions
  end
  form do |f|
    inputs do
      f.input :relabel_charge, label:"Charge Per Relabelling"
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
