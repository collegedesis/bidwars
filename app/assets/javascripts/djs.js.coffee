$(document).ready ->
  $('[id^="expand-"]').click ->
    id      = @id.split("expand-")[1]
    infos   = $('[id^="info-"]')
    current = $("#info-#{id}")
        
    # for the current item toggle the display
    current.toggle('200')