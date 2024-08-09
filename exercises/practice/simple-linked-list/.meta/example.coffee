class Element
  constructor: (@value, @next = null) ->

class LinkedList
  constructor: (values) ->
    @count = 0
    @head = null
    if values?
      for value in values
        @add new Element value

  length: ->
    @count

  add: (element) ->
    elt = element
    elt.next = @head
    @head = elt
    @count += 1

  toArray: ->
    elements = []
    element = @head
    while element?
      elements.push element.value
      element = element.next
    elements

  reverse: (prev = null) ->
    if @head?.next
      current = @head
      @head = @head.next
      current.next = prev
      @reverse current
    else
      @head.next = prev
    @

module.exports.Element = Element
module.exports.LinkedList = LinkedList
