# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# $.ajaxSetup headers:
#   "Content-Type": "application/json"

jQuery(document).ready ($) ->
  # $('.monkey').on 'click', (event) ->
  $(document).on 'click', '.monkey', (event) ->
    event.preventDefault()
    target = $ event.target
    # console.log target.attr 'href'
    url = target.attr 'href'
    $.ajax url,
      method: 'PUT',
      # headers: {"Content-Type": "application/json"},
      contentType: "application/json",
      dataType: "json",
      success: (data) ->
        console.log "trying..."
        $('#monkey_'+target.data('id')).replaceWith(data['monkey'])
        console.log "done trying!"
      error: (response) ->
        console.log 'error', response
