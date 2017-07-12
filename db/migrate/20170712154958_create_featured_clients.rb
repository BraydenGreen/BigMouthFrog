class CreateFeaturedClients < ActiveRecord::Migration[5.1]
  def change
    create_table :featured_clients do |t|
      t.text :image
      t.string :website_name
      t.text :testimonial

      t.timestamps
    end
  end
end
