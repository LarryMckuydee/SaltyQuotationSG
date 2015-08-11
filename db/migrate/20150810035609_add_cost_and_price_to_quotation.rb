class AddCostAndPriceToQuotation < ActiveRecord::Migration
  def change
    remove_column :quotations, :costing_id
    add_column :quotations, :price,:integer
    add_column :quotations, :cost, :integer
  end
end
