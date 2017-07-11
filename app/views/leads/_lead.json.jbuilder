json.extract! lead, :id, :name, :company, :website_url, :phone, :email, :address, :city, :state, :zip, :website_goals, :contacted, :created_at, :updated_at
json.url lead_url(lead, format: :json)
