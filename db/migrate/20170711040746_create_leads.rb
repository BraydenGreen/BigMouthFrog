class CreateLeads < ActiveRecord::Migration[5.1]
  def change
    create_table :leads do |t|
      t.string :name
      t.string :company
      t.string :website_url
      t.string :phone
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.text :website_goals
      t.integer :contacted, default: 0

      t.timestamps
    end
  end
end
