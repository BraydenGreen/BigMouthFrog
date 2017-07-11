jQuery(document).on 'turbolinks:load', ->
  notes = $('#notes')
  if notes.length > 0
    App.global_chat = App.cable.subscriptions.create {
      channel: "LeadsChannel"
      lead_id: notes.data('lead-id')
    },
    connected: ->
    disconnected: ->
    received: (data) ->
      notes.append data['note']
    send_note: (note, lead_id) ->
      @perform 'send_note', note: note, lead_id: lead_id
  $('#new_note').submit (e) ->
    $this = $(this)
    textarea = $this.find('#note_body')
    if $.trim(textarea.val()).length > 1
      App.global_chat.send_note textarea.val(),
      notes.data('lead-id')
      textarea.val('')
    e.preventDefault()
    return false
