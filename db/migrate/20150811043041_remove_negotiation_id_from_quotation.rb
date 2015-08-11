class RemoveNegotiationIdFromQuotation < ActiveRecord::Migration
  def change
    remove_column :quotations, :negotiation_id, :string
  end
end
