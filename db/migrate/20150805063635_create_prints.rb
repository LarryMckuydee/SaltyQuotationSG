class CreatePrints < ActiveRecord::Migration
  def change
    create_table :prints do |t|
      t.integer :method_id
      t.integer :size_id
      t.integer :block_no

      t.timestamps null: false
    end
  end
end
