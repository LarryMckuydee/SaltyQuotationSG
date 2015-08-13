class CreatePrintMethodBlockSizeRelations < ActiveRecord::Migration
  def change
    create_table :print_method_block_size_relations do |t|
      t.integer :print_method_id
      t.integer :block_size_id
      t.integer :price_cents
      t.integer :block_charge_price_cents
      t.integer :start_quantity
      t.integer :end_quantity

      t.timestamps null: false
    end
  end
end
