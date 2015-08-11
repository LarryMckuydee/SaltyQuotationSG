class BlockSize < ActiveRecord::Base
  has_one :quotation
  has_and_belongs_to_many :print_methods
end
