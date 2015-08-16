class AddIsPrimaryToPrintMethodBlockSizeRelation < ActiveRecord::Migration
  def change
    add_column :print_method_block_size_relations, :is_primary, :integer
  end
end
