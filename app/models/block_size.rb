class BlockSize < ActiveRecord::Base
  has_one :quotation
  # has_and_belongs_to_many :print_methods
  has_many :print_method_block_size_relations
  has_many :print_methods, :through => :print_method_block_size_relations
end
