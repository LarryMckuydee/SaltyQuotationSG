class WovenTag < ActiveRecord::Base
  register_currency :sgd
  monetize :tag_charge_cents
end
