class CreateCostings < ActiveRecord::Migration
  def change
    create_table :costings do |t|
      t.integer :price
      t.integer :cost

      t.timestamps null: false
    end
  end
end
