class AddAddOnEntitledToBrand < ActiveRecord::Migration
  def change
    add_column :brands, :add_on_entitled, :integer
  end
end
