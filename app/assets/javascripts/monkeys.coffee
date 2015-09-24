
jQuery(document).ready ($) ->
  $(document).on 'click', '.monkey', (event) ->
    event.preventDefault()
    target = $ event.target
    url = target.attr 'href'
    $.ajax url,
      method: 'PUT',
      contentType: "application/json",
      dataType: "json",
      success: (data) ->
        newMonkeyHtml = data['monkey']
        monkeyLiId = '#monkey_'+target.data('id')
        $(monkeyLiId).replaceWith(newMonkeyHtml)
      error: (response) ->
        console.log 'error', response
