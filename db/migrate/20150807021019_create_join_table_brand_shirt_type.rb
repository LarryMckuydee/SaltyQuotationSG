class CreateJoinTableBrandShirtType < ActiveRecord::Migration
  def change
    create_join_table :brands, :shirt_types do |t|
      # t.index [:brand_id, :shirttype_id]
      # t.index [:shirttype_id, :brand_id]
    end
  end
end
