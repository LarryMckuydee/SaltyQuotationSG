class Quotation < ActiveRecord::Base
  has_one :customer
  has_one :design
  has_one :shirt
  has_one :printing_detail
  has_one :apparel_consultant
  has_one :costing
  has_one :negotiation
  has_many :additional_info
end
