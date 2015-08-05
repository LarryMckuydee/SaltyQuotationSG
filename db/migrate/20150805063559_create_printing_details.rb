class CreatePrintingDetails < ActiveRecord::Migration
  def change
    create_table :printing_details do |t|
      t.integer :front_print_id
      t.integer :back_print_id
      t.integer :left_print_id
      t.integer :right_print_id
      t.integer :special

      t.timestamps null: false
    end
  end
end
