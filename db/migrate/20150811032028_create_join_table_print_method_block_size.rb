class CreateJoinTablePrintMethodBlockSize < ActiveRecord::Migration
  def change
    create_join_table :print_methods, :block_sizes do |t|
      # t.index [:print_method_id, :block_size_id]
      # t.index [:block_size_id, :print_method_id]
    end
  end
end
