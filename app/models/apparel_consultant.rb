class ApparelConsultant < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true
  has_many :quotations, foreign_key: "ac_id"
  has_many :additional_infos,foreign_key: "approval_id"
  accepts_nested_attributes_for :quotations
end
