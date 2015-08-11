class AddDesignFileNameToQuotation < ActiveRecord::Migration
  def change
    add_column :quotations, :design_file_name, :string
  end
end
