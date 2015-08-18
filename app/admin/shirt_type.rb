ActiveAdmin.register ShirtType do

  permit_params :name

  # form do |f|
  #   f.has_many :shirt_type_fit_relations do |fit|
  #      fit.inputs
  #    end
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
