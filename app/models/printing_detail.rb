class PrintingDetail < ActiveRecord::Base
  has_one :quotation
  has_many :front_print, class_name: "Print", foreign_key: "front_print_id"
  has_many :back_print, class_name: "Print", foreign_key: "back_print_id"
  has_many :left_print, class_name: "Print", foreign_key: "left_print_id"
  has_many :right_print, class_name: "Print", foreign_key: "right_print_id"
end
