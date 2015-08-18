class AddAllColumnsToQuotation < ActiveRecord::Migration
  def change
      add_column :quotations, :sew_tag_charge_cents, :integer
      add_column :quotations, :woven_tag_quantity, :integer
      add_column :quotations, :woven_tag_charge_cents, :integer
      add_column :quotations, :relabel_quantity, :integer
      add_column :quotations, :relabel_charge_cents, :integer
  end
end
