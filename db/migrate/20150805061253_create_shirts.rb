class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.integer :brand_id
      t.integer :type_id
      t.integer :fit_id
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
