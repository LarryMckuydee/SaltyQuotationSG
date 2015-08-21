ActiveAdmin.register ApparelConsultant do
  filter :resource_name
  permit_params :name,:email,:approve_right,:password,:password_confirmation
  # form do |f|
  #   if !f.object.new_record?
  #     inputs do
  #         f.input :approve_right,:as =>:select,collection:[["No",0],["Yes",1]]
  #     end
  #     f.actions
  #   end
  # end
  form do |f|
    inputs do
      f.input :name
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :approve_right
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
