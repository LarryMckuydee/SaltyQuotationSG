class AddColumnsToQuotation < ActiveRecord::Migration
  def change
    add_column :quotations, :budget_cents, :integer
    add_column :quotations, :rush_fee_cents, :integer
    add_column :quotations, :delivery_fee_cents, :integer
    add_column :quotations, :price_cents, :integer
    add_column :quotations, :cost_cents, :integer
    add_column :quotations, :min_rpp_cents, :integer
    add_column :quotations, :max_rpp_cents, :integer
    add_column :quotations, :actual_price_cents, :integer
    add_column :quotations, :total_cost_cents, :integer
  end
end
