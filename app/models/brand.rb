class Brand < ActiveRecord::Base
  has_one :shirt
  has_and_belongs_to_many :fit
end
