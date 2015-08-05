class CreateAdditionalInfos < ActiveRecord::Migration
  def change
    create_table :additional_infos do |t|
      t.text :description
      t.integer :price
      t.integer :approval_id

      t.timestamps null: false
    end
  end
end
