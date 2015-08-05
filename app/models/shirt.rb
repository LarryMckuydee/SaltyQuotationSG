class Shirt < ActiveRecord::Base
  belongs_to :quotation
  has_one :brand
  has_one :fit
  has_one :type
end
