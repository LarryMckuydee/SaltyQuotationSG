class CreateJoinTableBrandFit < ActiveRecord::Migration
  def change
    create_join_table :brands, :fits do |t|
      # t.index [:brand_id, :fit_id]
      # t.index [:fit_id, :brand_id]
    end
  end
end
