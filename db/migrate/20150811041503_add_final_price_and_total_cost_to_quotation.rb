class AddFinalPriceAndTotalCostToQuotation < ActiveRecord::Migration
  def change
    add_column :quotations, :final_price, :integer
    add_column :quotations, :total_cost, :integer
  end
end
