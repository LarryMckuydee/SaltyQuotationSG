class CreateNegotiations < ActiveRecord::Migration
  def change
    create_table :negotiations do |t|
      t.integer :min_rrp
      t.integer :max_rrp

      t.timestamps null: false
    end
  end
end
