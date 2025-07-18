LinkedList = require './linked-list'

describe 'LinkedList', ->
  it 'init', ->
    list = new LinkedList()
    expect(list.count).toBe 0

  xit 'push/pop', ->
    list = new LinkedList()
    list.pushNode(10)
    list.pushNode(20)
    list.pushNode(30)
    expect(list.popNode()).toBe 30
    expect(list.popNode()).toBe 20

  xit 'push/shift', ->
    list = new LinkedList()
    list.pushNode(10)
    list.pushNode(20)
    expect(list.shiftNode()).toBe 10
    expect(list.shiftNode()).toBe 20

  xit 'unshift/shift', ->
    list = new LinkedList()
    list.unshiftNode(20)
    list.unshiftNode(10)
    list.unshiftNode(30)
    expect(list.shiftNode()).toBe 30
    expect(list.shiftNode()).toBe 10

  xit 'unshift/pop', ->
    list = new LinkedList()
    list.unshiftNode(20)
    list.unshiftNode(30)
    expect(list.popNode()).toBe 20

  xit 'example', ->
    list = new LinkedList()
    list.pushNode(10)
    list.pushNode(20)
    expect(list.popNode()).toBe 20
    list.pushNode(30)
    expect(list.shiftNode()).toBe 10
    list.unshiftNode(40)
    list.pushNode(50)
    expect(list.shiftNode()).toBe 40
    expect(list.popNode()).toBe 50
    list.pushNode(60)
    list.deleteNode(60)
    expect(list.countNodes()).toBe 1
    expect(list.shiftNode()).toBe 30

  xit 'pops undefined when there are no elements', ->
    list = new LinkedList()
    expect(list.popNode()).toBe undefined

  xit 'can count its elements', ->
    list = new LinkedList()
    list.pushNode(20)
    list.pushNode(30)
    expect(list.countNodes()).toBe 2

  xit 'deletes last element from list', ->
    list = new LinkedList()
    list.pushNode(10)
    list.pushNode(20)
    list.pushNode(30)
    list.deleteNode(10)
    expect(list.countNodes()).toBe 2
    expect(list.shiftNode()).toBe 20

  xit 'deletes only the last element', ->
    list = new LinkedList()
    list.pushNode(10)
    list.deleteNode(10)
    expect(list.countNodes()).toBe 0
