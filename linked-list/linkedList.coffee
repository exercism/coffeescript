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
    if @count is 0
      return undefined
    if @count is 1
      popVal = @current.value
      @current = undefined
      @front = @current
      return popVal
    while(@current.next != undefined)
        @current = @current.next

    popVal = @current.value
    @current = @current.prev
    @current.next = undefined
    @count--
    popVal


  shiftNode: ->
    if @count is 0
      return undefined
    if @count is 1
      shiftVal = @current.value
      @current = undefined
      @front = @current
      @count--
      return shiftVal
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
      node.next = @front
      @front.prev = node
      @front = node
      @count++
    @count

  deleteNode: (@value) ->
    @current = @front
    while(!@current.value is @value)
      @current = @current.next
    if @current.prev is undefined
      @shiftNode()
    else
      @current.prev.next = @current.next
      @current.next.prev = @current.prev
      @current = @current.prev
      @count--


  countNodes: ->
    @count

module.exports = LinkedList
