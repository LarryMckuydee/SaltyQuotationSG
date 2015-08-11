class ShirtType < ActiveRecord::Base
  has_one :quotation
  has_and_belongs_to_many :brands
end
