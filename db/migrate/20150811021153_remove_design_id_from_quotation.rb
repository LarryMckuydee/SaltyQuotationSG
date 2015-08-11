class RemoveDesignIdFromQuotation < ActiveRecord::Migration
  def change
    remove_column :quotations,:design_id
  end
end
