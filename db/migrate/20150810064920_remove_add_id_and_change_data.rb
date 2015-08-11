class RemoveAddIdAndChangeData < ActiveRecord::Migration
  def change
    remove_column :quotations, :additional_id
    remove_column :quotations, :front_block_no_id
    remove_column :quotations, :back_block_no_id
    remove_column :quotations, :left_block_no_id
    remove_column :quotations, :right_block_no_id
    add_column :quotations, :front_block_no,:integer
    add_column :quotations, :back_block_no,:integer
    add_column :quotations, :left_block_no,:integer
    add_column :quotations, :right_block_no,:integer
  end
end
