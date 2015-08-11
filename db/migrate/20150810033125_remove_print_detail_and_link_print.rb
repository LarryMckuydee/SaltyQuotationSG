class RemovePrintDetailAndLinkPrint < ActiveRecord::Migration
  def change
    remove_column :quotations,:printing_id
    add_column :quotations, :front_print_method_id,:integer
    add_column :quotations, :front_block_size_id,:integer
    add_column :quotations, :front_block_no_id,:integer
    add_column :quotations, :back_print_method_id,:integer
    add_column :quotations, :back_block_size_id,:integer
    add_column :quotations, :back_block_no_id,:integer
    add_column :quotations, :left_print_method_id,:integer
    add_column :quotations, :left_block_no_id,:integer
    add_column :quotations, :right_print_method_id,:integer
    add_column :quotations, :right_block_no_id,:integer
    add_column :quotations, :special_print,:integer
  end
end
