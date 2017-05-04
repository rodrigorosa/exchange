$(document).ready ->
  $('form').submit ->
    if $('form').attr('action') == '/exchange'
      $.ajax '/exchange',
          type: 'POST'
          dataType: 'json'
          data: {
                  currency: $("#currency").val(),
                  currency_destination: $("#currency_destination").val(),
                  quantity: $("#quantity").val()
                }
          error: (jqXHR, textStatus, errorThrown) ->
            alert textStatus
          success: (data, textStatus, jqXHR) ->
            $('#result').val(data.value)
        return false;

  timeout = undefined
  $('#quantity').on 'keydown', ->
    if timeout
      clearTimeout timeout
      timeout = null
    timeout = setTimeout((->
      $('form').submit()
      return
    ), 500)
    return

  $('#inverter').on 'click', ->
    currency = $('#currency').val()
    currency_destination = $('#currency_destination').val()
    $('#currency').val(currency_destination)
    $('#currency_destination').val(currency)
    $('form').submit()
    return

