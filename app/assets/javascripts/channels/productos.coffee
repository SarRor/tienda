App.productos = App.cable.subscriptions.create "ProductosChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $(".tienda #main").html(data.html)
