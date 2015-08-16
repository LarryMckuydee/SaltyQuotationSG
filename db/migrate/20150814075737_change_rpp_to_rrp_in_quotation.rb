class ChangeRppToRrpInQuotation < ActiveRecord::Migration
  def change
    rename_column :quotations, :min_rpp_cents,:min_rrp_cents
    rename_column :quotations, :max_rpp_cents,:max_rrp_cents
  end
end
