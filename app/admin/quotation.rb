ActiveAdmin.register Quotation do

  permit_params :id, :budget,:rush_fee,:delivery_fee,:delivered,:deadline,:ac_id,:customer_id,:design_id,:approval_id,:additional_id, :negotiation_id, :shirt_type_id,:brand_id,:fit_id,:front_print_method_id,:front_block_size_id,:front_block_no, :back_print_method_id, :back_block_no,:back_block_size_id, :left_print_method_id ,:left_block_no,:right_print_method_id,:right_block_no,:special_print,:price,:cost
  # index do
  #   id column
  #   column :budget
  #   column :rush_fee
  #   column :deliver_fee
  #   column :customer_id
  #   actions
  # end

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
