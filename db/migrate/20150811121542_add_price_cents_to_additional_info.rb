class AddPriceCentsToAdditionalInfo < ActiveRecord::Migration
  def change
    add_column :additional_infos, :price_cents, :integer
  end
end
