# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $("#search").keydown ->
    filterFunction = (index, djItem) ->
      stageName = $(djItem).data('stageName')
      name      = $(djItem).data('name')
      
      search = $('#search').val()
      regex = new RegExp(search, 'i')
      
      return djItem if stageName.match(regex)
      return djItem if name.match(regex)

    djs = $('.djItem')  
    filtered = djs.filter(filterFunction)
    console.log "total djs: #{djs.length}"
    console.log "filtered: #{filtered.length}"
    $(dj).css('display', 'block') for dj in djs when !$.inArray(dj, filtered)
    $(dj).css('display', 'none') for dj in djs when $.inArray(dj, filtered)