class Quotation < ActiveRecord::Base
  monetize :budget_cents
  monetize :rush_fee_cents
  monetize :delivery_fee_cents
  monetize :price_cents
  monetize :cost_cents
  monetize :min_rpp_cents
  monetize :max_rpp_cents
  monetize :actual_price_cents
  monetize :total_cost_cents

  belongs_to :customer
  # belongs_to :design
  belongs_to :shirt_type
  belongs_to :brand
  belongs_to :fit
  # belongs_to :printing_detail, foreign_key: "printing_id"
  # has_one :front_print, class_name: "Print", foreign_key: "front_print_id"
  # has_one :back_print, class_name: "Print", foreign_key: "back_print_id"
  # has_one :left_print, class_name: "Print", foreign_key: "left_print_id"
  # has_one :right_print, class_name: "Print", foreign_key: "right_print_id"

  belongs_to :print_method, foreign_key: "front_print_method_id"
  belongs_to :block_size,foreign_key: "front_block_size_id"
  # belongs_to :block_no,foreign_key: "front_block_no_id"

  belongs_to :print_method, foreign_key: "back_print_method_id"
  belongs_to :block_size,foreign_key: "back_block_size_id"
  # belongs_to :block_no,foreign_key: "back_block_no_id"

  belongs_to :print_method, foreign_key: "left_print_method_id"
  # belongs_to :block_no,foreign_key: "left_block_no_id"

  belongs_to :print_method, foreign_key: "right_print_method_id"
  # belongs_to :block_no,foreign_key: "right_block_no_id"

  belongs_to :apparel_consultant

  # belongs_to :costing
  # belongs_to :negotiation
  has_many :additional_infos

  accepts_nested_attributes_for :brand
  accepts_nested_attributes_for :shirt_type
  accepts_nested_attributes_for :fit
  accepts_nested_attributes_for :additional_infos
  accepts_nested_attributes_for :customer
  def showprice(shirtid,fitid,methodid,sizeid,quantity,noblock)
    @shirtprice = ShirtType.all.find(shirtid).shirt_type_fit_relations.where("fit_id = ? AND ?<= end_quantity AND ?>=start_quantity",fitid,quantity,quantity).first.price
    @printprice = PrintMethod.all.find(methodid).print_method_block_size_relations.where("block_size_id = ? AND ? <= end_quantity AND ? >= start_quantity",sizeid,quantity,quantity).first.price
    @printblockcharge = PrintMethod.all.find(methodid).print_method_block_size_relations.where("block_size_id = ? AND ? <= end_quantity AND ? >= start_quantity",sizeid,quantity,quantity).first.block_charge_price
    @price = @shirtprice+@printprice+(@printblockcharge*noblock.to_i)
  end

  def showcost(shirtid,fitid,methodid,sizeid,quantity,noblock)
    @shirtprice = ShirtType.all.find(shirtid).shirt_type_fit_relations.where("fit_id = ? AND ?<= end_quantity AND ?>=start_quantity",fitid,quantity,quantity).first.price
    @printprice = PrintMethod.all.find(methodid).print_method_block_size_relations.where("block_size_id = ? AND ? <= end_quantity AND ? >= start_quantity",sizeid,quantity,quantity).first.price
    @printblockcharge = PrintMethod.all.find(methodid).print_method_block_size_relations.where("block_size_id = ? AND ? <= end_quantity AND ? >= start_quantity",sizeid,quantity,quantity).first.block_charge_price
    @cost = (@shirtprice+@printprice+(@printblockcharge*noblock.to_i))*quantity.to_i
  end
end
