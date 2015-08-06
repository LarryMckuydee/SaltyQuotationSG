class Print < ActiveRecord::Base
  has_one :printing_detail
  belongs_to :print_method
  belongs_to :block_size
end
