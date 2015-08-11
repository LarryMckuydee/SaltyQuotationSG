class AddMinRppAndMaxRppToQuotation < ActiveRecord::Migration
  def change
    add_column :quotations, :min_rpp, :integer
    add_column :quotations, :max_rpp, :integer
  end
end
