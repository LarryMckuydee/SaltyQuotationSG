class AdditionalInfo < ActiveRecord::Base
  register_currency :sgd
  monetize :price_cents
  belongs_to :quotation
  belongs_to :apparel_consultant, foreign_key: "approval_id"

  def additional_info_price(quotation_id)
    additional_infos = AdditionalInfo.all.where(quotation_id:quotation_id)
    additional_price = 0
    if additional_infos.any?
      additional_infos.each do |additional_info|
        additional_price = additional_price + additional_info.price_cents
      end
    end
    return additional_price
  end
end
