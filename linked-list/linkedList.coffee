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
    else
      shiftVal = @front.value
      node = @front
      @front = @front.next
      @front.prev = undefined
      node.next = undefined
      @count--
      return shiftVal


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
    if @count is 0
      return undefined
    else if @count is 1
      return @shiftNode()
    @current = @front
    while (@current.value isnt @value)
      if @current.next isnt undefined
        @current = @current.next

    if @current.next is undefined
      return @popNode()
    else if @current.prev is undefined
      return @shiftNode()
    else
      @current.prev.next = @current.next
      @current.next.prev = @current.prev
      deleteValue = @current.value
      @current = undefined
      @count--
      return deleteValue


  countNodes: ->
    @count

module.exports = LinkedList
