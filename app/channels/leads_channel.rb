class LeadsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "leads_#{params['lead_id']}_channel"
  end

  def unsubscribed
  end

  def send_note(data)
    current_user.notes.create!(body: data['body'], lead_id: data['lead_id'])
  end
end
