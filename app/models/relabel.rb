class Relabel < ActiveRecord::Base
  register_currency :sgd
  monetize :relabel_charge_cents
end
