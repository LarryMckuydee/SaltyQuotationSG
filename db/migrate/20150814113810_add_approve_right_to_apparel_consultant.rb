class AddApproveRightToApparelConsultant < ActiveRecord::Migration
  def change
    add_column :apparel_consultants, :approve_right, :integer
  end
end
