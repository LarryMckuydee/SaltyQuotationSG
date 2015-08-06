class Quotation < ActiveRecord::Base
  belongs_to :customer
  belongs_to :design
  belongs_to :shirt
  belongs_to :printing_detail, foreign_key: "printing_id"
  belongs_to :apparel_consultant,foreign_key: "ac_id"
  belongs_to :costing
  belongs_to :negotiation
  has_many :additional_info
end
