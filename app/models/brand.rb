class Brand < ActiveRecord::Base
  has_one :quotation
  # has_many :brand_categorization
  # has_many :fit , :through => :brand_categorization
  # has_and_belongs_to_many :fits
  has_and_belongs_to_many :shirt_types

end
