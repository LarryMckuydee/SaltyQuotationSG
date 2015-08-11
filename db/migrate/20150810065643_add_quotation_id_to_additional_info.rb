class AddQuotationIdToAdditionalInfo < ActiveRecord::Migration
  def change
    add_column :additional_infos, :quotation_id, :integer
  end
end
