$ ->
  $('form').submit (event) ->
    event.preventDefault()

    url = $(@).attr 'action'
    data = $(@).serialize()

    $.post url, data, (response) ->
      $('#signup').html '<p>Thanks for signing up!</p>'
    .fail (jqXHR) ->
      alert "#{jqXHR.status} #{jqXHR.statusText}"
###
$ ->
  $('form').submit (event) ->
    event.preventDefault()

    url = $(@).attr 'action'
    data = $(@).serialize()

    $.ajax url,
      data: data
      type: 'POST'
      success: (response) ->
        $('#signup').html '<p>Thanks for signing up!</p>'
###
