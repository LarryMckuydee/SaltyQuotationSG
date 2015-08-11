class RemovePriceFromAdditionalInfo < ActiveRecord::Migration
  def change
    remove_column :additional_infos, :price, :integer
  end
end
