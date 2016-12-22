# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->  

  Vue.component('todo-item', {
    props: ['todo'],
    template: '<li>{{ todo.text }}</li>'
  })

  app3 = new Vue({
    el: '#app'

    data:
      msg: 'ffffffddddddsssssaaaasssssdddd'
      msg2: 'Hi2' + new Date
      seen: true
      todos: [
        {text: "a"}
        {text: "b"}
        {text: "c"}
        {text: "d"}
      ]
      groceryList: [
        { text: 'Vegetables' },
        { text: 'Cheese' },
        { text: 'Whatever else humans are supposed to eat' }
      ]

    methods:
      pushTodolist: ->
        # this.todos.push({text: this.msg})
        $.ajax({
          url: '/statics/vid'
          data:
            content: this.msg
          })
        this.msg = ''

      pushTodolistItem: (content) ->
        this.todos.push({text: content})        


      setPushTodoListClass: ->
        this.seen = if this.seen == true then false else true
        # if this.seen == true
        #   this.seen = false
        # else
        #   this.seen = true


  })

  app1 = new UserChat(app3)