class PrintMethod < ActiveRecord::Base
  has_one :quotation
  has_and_belongs_to_many :block_sizes
end
