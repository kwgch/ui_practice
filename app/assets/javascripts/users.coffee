$(document).on 'change', '#user_pref', ->
  $.ajax(
    type: 'get'
    url: '/users/cities_select'
    data: {
      pref: $(this).val()
    }
  ).done (data) ->
    console.log data
    options = eval data
    $('#user_city > option').remove()
    options.forEach (item) -> $('#user_city').append($('<option>').html(item).val(item))
