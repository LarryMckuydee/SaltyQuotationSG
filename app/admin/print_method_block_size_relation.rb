ActiveAdmin.register PrintMethodBlockSizeRelation do
  permit_params :print_method_id,:block_size_id,:price,:block_charge_price,:start_quantity,:end_quantity
  form do |f|
    f.inputs do
      f.input :print_method_id, as: :select,collection:PrintMethod.all.collect{|print_method| [print_method.name,print_method.id]}
      f.input :block_size_id, as: :select,collection:BlockSize.all.collect{|block_size| [block_size.name,block_size.id]}
      f.input :price
      f.input :block_charge_price, label: "Price Charge Per Block"
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
