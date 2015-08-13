class ShirtType < ActiveRecord::Base
  has_one :quotation
  has_and_belongs_to_many :brands
  has_many :shirt_type_fit_relations
  has_many :fits, :through => :shirt_type_fit_relations
  def self.showprice(shirtid,fitid,quantity)
    # find(shirtid).shirt_type_fit_relations.where(:fit_id=>fitid)
    find(shirtid).shirt_type_fit_relations.where("fit_id = ? AND ?<= end_quantity AND ?>=start_quantity",fitid,quantity,quantity).first.price
  end
end
