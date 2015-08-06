class Shirt < ActiveRecord::Base
  has_one :quotation
  belongs_to :brand
  belongs_to :fit
  belongs_to :shirt_type, foreign_key: "type_id"
end
