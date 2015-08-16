class Customer < ActiveRecord::Base
  validates :full_name, presence: true,length:{:minimum => 5}
  validates :contact,presence:true
  has_one :quotation

end
