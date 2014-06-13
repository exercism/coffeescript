Node = require('./node')

class LinkedList

  constructor: -> 
    @count = 0
    @front = undefined
    @current = undefined

  pushNode: (@value) ->
    if @count is 0
      @front = new Node(@value)
      @current = @front
      @count++
    else
      while(@current.next != undefined)
        @current = @current.next
      node = new Node(@value)
      @current.next = node
      node.prev = @current
      @current = node
      @count++
      

  popNode: ->
    while(@current.next != undefined)
        @current = @current.next
        
    popVal = @current.value
    @current = @current.prev
    @current.next = undefined
    @count--
    popVal


  shiftNode: ->
    shiftVal = @front.value
    if @front.next != undefined
      @front = @front.next
      @front.prev = undefined
      @count--
    else
      front = @front
      @front = @front.next
      @current = @front

      @count--
    shiftVal


  unshiftNode: (@value) ->
    if @count is 0
      @front = new Node(@value)
      @current = @front
      @count++
    else
      node = new Node(@value)
      @front.prev = node
      node.next = @current
      @front = node
      @count++
    @count




  countNodes: ->
    @count

module.exports = LinkedList
