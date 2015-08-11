class AddQuantityToQuotation < ActiveRecord::Migration
  def change
    add_column :quotations, :quantity, :integer
  end
end
