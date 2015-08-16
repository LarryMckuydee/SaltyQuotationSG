class PrintMethod < ActiveRecord::Base
  has_one :quotation
  # has_and_belongs_to_many :block_sizes
  has_many :print_method_block_size_relations
  has_many :block_sizes,:through => :print_method_block_size_relations

  def self.showsleeveprice(methodid,quantity)
    find(methodid).print_method_block_size_relations.where("is_primary = 1 AND ? <= end_quantity AND ? >= start_quantity",quantity,quantity).first.price
  end

  def self.showprice(methodid,sizeid,quantity)
    find(methodid).print_method_block_size_relations.where("block_size_id = ? AND ? <= end_quantity AND ? >= start_quantity",sizeid,quantity,quantity).first.price
  end

  def self.showsleeveblockcharge(methodid,quantity)
    find(methodid).print_method_block_size_relations.where("is_primary = 1 AND ? <= end_quantity AND ? >= start_quantity",quantity,quantity).first.block_charge_price
  end

  def self.showblockcharge(methodid,sizeid,quantity)
    find(methodid).print_method_block_size_relations.where("block_size_id = ? AND ? <= end_quantity AND ? >= start_quantity",sizeid,quantity,quantity).first.block_charge_price
  end
end
