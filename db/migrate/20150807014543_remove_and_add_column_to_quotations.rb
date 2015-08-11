class RemoveAndAddColumnToQuotations < ActiveRecord::Migration
  def change
    remove_column :quotations, :shirt_id
    add_column :quotations, :shirt_type_id,:integer
    add_column :quotations, :brand_id,:integer
    add_column :quotations, :fit_id,:integer
  end
end
