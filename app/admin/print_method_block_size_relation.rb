ActiveAdmin.register PrintMethodBlockSizeRelation do
  permit_params :print_method_id,:block_size_id,:price,:block_charge_price,:start_quantity,:end_quantity,:is_primary

  index do
    selectable_column
    column "Print Method" do |print_method|
      shirt_type = PrintMethod.find(print_method.print_method_id).name
    end
    column "Block Size" do |block_size|
      fit= BlockSize.find(block_size.block_size_id).name
    end
    column "Price",:price
    column "Charge Per Block", :block_charge_price
    column "Start Quantity",:start_quantity
    column "End Quantity",:end_quantity
    column "Primary Option",:is_primary
    column "Created At",:created_at
    column "Updated At",:updated_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :print_method_id, as: :select,collection:PrintMethod.all.collect{|print_method| [print_method.name,print_method.id]}
      f.input :block_size_id, as: :select,collection:BlockSize.all.collect{|block_size| [block_size.name,block_size.id]}
      f.input :price
      f.input :block_charge_price, label: "Price Charge Per Block"
      f.input :start_quantity
      f.input :end_quantity
      f.input :is_primary,:as =>:select,collection:[["No",0],["Yes",1]]
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
