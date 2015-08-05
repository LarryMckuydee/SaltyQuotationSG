class Print < ActiveRecord::Base
  belongs_to :printing_detail
  has_one :print_method
  has_one :size
end
