class UserChat
  constructor: (@app)->
    $this = this
    if $("#current_user").size() > 0
      App.chat = App.cable.subscriptions.create "ChatChannel",
        connected: ->

        disconnected: ->

        received: (data) ->
          $this.add_content(data)

  add_content: (data) ->    
    @app.pushTodolistItem(data['content'])


window.UserChat = UserChat