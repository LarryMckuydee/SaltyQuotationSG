class CreateBlockSizes < ActiveRecord::Migration
  def change
    create_table :block_sizes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
