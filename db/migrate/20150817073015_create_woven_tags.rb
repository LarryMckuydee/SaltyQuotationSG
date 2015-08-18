class CreateWovenTags < ActiveRecord::Migration
  def change
    create_table :woven_tags do |t|
      t.integer :tag_charge_cents
      t.integer :start_quantity
      t.integer :end_quantity

      t.timestamps null: false
    end
  end
end
