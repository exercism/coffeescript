{ Element, LinkedList } = require './simple-linked-list'

describe 'Simple Linked List', ->
  describe 'Element class', ->
    xit 'has constructor', ->
      element = new Element 1
      expect(element.value).toEqual 1

    xit 'value reflects constructor arg', ->
      element = new Element 2
      expect(element.value).toEqual 2

    xit 'has null for next by default', ->
      element = new Element 1
      expect(element.next).toEqual null
    
  describe 'List class', ->
    xit 'has constructor', ->
      list = new LinkedList
      expect(list).toBeDefined()

    xit 'new lists should have length 0', ->
      list = new LinkedList
      expect(list.length()).toEqual 0

    xit 'can add a element', ->
      list = new LinkedList
      element = new Element 1
      expect -> list.add element
      .not.toThrow()

    xit 'adding a element increments length', ->
      list = new LinkedList
      element = new Element 1
      list.add element
      expect(list.length()).toEqual 1

    xit 'adding two elements increments twice', ->
      list = new LinkedList
      element1 = new Element 1
      element2 = new Element 3
      list.add element1
      list.add element2
      expect(list.length()).toEqual 2

    xit 'new Lists have a null head element', ->
      list = new LinkedList
      expect(list.head).toEqual null

    xit 'adding an Element to an empty list sets the head Element', ->
      list = new LinkedList
      element = new Element 1
      list.add element
      expect(list.head.value).toEqual 1

    xit 'adding a second Element updates the head Element', ->
      list = new LinkedList
      element1 = new Element 1
      element2 = new Element 3
      list.add element1
      list.add element2
      expect(list.head.value).toEqual 3

    xit 'can get the next Element from the head', ->
      list = new LinkedList
      element1 = new Element 1
      element2 = new Element 3
      list.add element1
      list.add element2
      expect(list.head.next.value).toEqual 1

    xit 'can be inxitialized wxith an array', ->
      list = new LinkedList [1, 2, 3]
      expect(list.length()).toEqual 3
      expect(list.head.value).toEqual 3

  describe 'Lists wxith multiple elements', ->

    xit 'wxith correct length', ->
      list = new LinkedList [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      expect(list.length()).toEqual 10

    xit 'wxith correct head value', ->
      list = new LinkedList [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 
      expect(list.head.value).toEqual 10

    xit 'can traverse the list', ->
      list = new LinkedList [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 
      expect(list.head.next.next.next.value).toEqual 7

    xit 'can convert to an array', ->
      list = new LinkedList [1]
      expect(list.toArray()).toEqual [1]

    xit 'head of list is final element from input array', ->
      list = new LinkedList [1, 2]
      expect(list.head.value).toEqual 2
    
    xit 'can convert longer list to an array', ->
      list = new LinkedList [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 
      expect(list.toArray()).toEqual [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]

    xit 'can be reversed', ->
      list = new LinkedList [1, 2]
      expect(list.reverse().toArray()).toEqual [1, 2]

    xit 'can be reversed when xit has more elements', ->
      list = new LinkedList [1, 2, 3]
      expect(list.reverse().toArray()).toEqual [1, 2, 3]

    xit 'can reverse with many elements', ->
      list = new LinkedList [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 
      expect(list.reverse().toArray()).toEqual [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

    xit 'can reverse a reversal', ->
      list = new LinkedList [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 
      expect(list.reverse().reverse().toArray()).toEqual [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
