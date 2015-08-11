class RemoveColumnsFromQuotation < ActiveRecord::Migration
  def change
    remove_column :quotations, :budget, :integer
    remove_column :quotations, :rush_fee, :integer
    remove_column :quotations, :delivery_fee, :integer
    remove_column :quotations, :price, :integer
    remove_column :quotations, :cost, :integer
    remove_column :quotations, :min_rpp, :integer
    remove_column :quotations, :max_rpp, :integer
    remove_column :quotations, :final_price, :integer
    remove_column :quotations, :total_cost, :integer
  end
end
