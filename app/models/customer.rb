class Customer < ActiveRecord::Base
  has_one :quotation
  
end
