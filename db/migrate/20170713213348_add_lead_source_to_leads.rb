class AddLeadSourceToLeads < ActiveRecord::Migration[5.1]
  def change
    add_column :leads, :lead_source, :string
  end
end
