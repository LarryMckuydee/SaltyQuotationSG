class CreateQuotations < ActiveRecord::Migration
  def change
    create_table :quotations do |t|
      t.integer :budget
      t.integer :rush_fee
      t.integer :delivery_fee
      t.integer :delivered
      t.datetime :deadline
      t.integer :ac_id
      t.integer :customer_id
      t.integer :design_id
      t.integer :shirt_id
      t.integer :printing_id
      t.integer :approval_id
      t.integer :additional_id
      t.integer :costing_id
      t.integer :negotiation_id

      t.timestamps null: false
    end
  end
end
