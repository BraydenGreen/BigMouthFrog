class NoteBroadcastJob < ApplicationJob
  queue_as :default

  def perform(note)
    ActionCable.server.broadcast "leads_#{note.lead.id}_channel", note: render_note(note)
  end

  private

  def render_note(note)
    NotesController.render partial: 'notes/note', locals: { note: note }
  end
end
