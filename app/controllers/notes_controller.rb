class NotesController < ApplicationController
  def create
    @note = current_user.notes.build(note_params)
  end

  private

    def note_params
      params.require(:note).permit(:body)
    end
end
