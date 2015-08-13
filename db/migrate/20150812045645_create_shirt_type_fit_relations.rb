class CreateShirtTypeFitRelations < ActiveRecord::Migration
  def change
    create_table :shirt_type_fit_relations do |t|
      t.integer :shirt_type_id
      t.integer :fit_id
      t.integer :price_cents
      t.integer :start_quantity
      t.integer :end_quantity

      t.timestamps null: false
    end
  end
end
