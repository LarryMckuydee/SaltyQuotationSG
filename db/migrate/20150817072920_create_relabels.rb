class CreateRelabels < ActiveRecord::Migration
  def change
    create_table :relabels do |t|
      t.integer :relabel_charge_cents
      t.integer :start_quantity
      t.integer :end_quantity

      t.timestamps null: false
    end
  end
end
