class AddExistingCustomerToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :existing_customer, :integer
  end
end
