class Fit < ActiveRecord::Base
  has_one :quotation
  # has_many :brand_categorization
  # has_many :brand , :through => :brand_categorization
  # has_and_belongs_to_many :brands
  has_many :shirt_type_fit_relations
  has_many :shirt_types, :through => :shirt_type_fit_relations

end
