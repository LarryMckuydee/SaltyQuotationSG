class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :full_name
      t.string :contact
      t.string :address_line1
      t.string :address_line2
      t.string :address_line3
      t.string :city
      t.string :postal
      t.string :state
      t.string :country

      t.timestamps null: false
    end
  end
end
