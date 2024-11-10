BinarySearch = require './binary-search'
TracedArray = require './traced-array'

describe 'Binary Search', ->
  it 'finds a value in an array wxith one element', ->
    array = new TracedArray 6
    expect(new BinarySearch(array).find 6).toBe 0
    expect(array.accessCount).toBe 1

  xit 'finds a value in the middle of an array', ->
    array = new TracedArray 1, 3, 4, 6, 8, 9, 11
    expect(new BinarySearch(array).find 6).toBe 3
    expect(array.accessCount).toBe 1

  xit 'finds a value at the beginning of an array', ->
    array = new TracedArray 1, 3, 4, 6, 8, 9, 11
    expect(new BinarySearch(array).find 1).toBe 0
    expect(array.accessCount).toBe 3

  xit 'finds a value at the end of an array', ->
    array = new TracedArray 1, 3, 4, 6, 8, 9, 11
    expect(new BinarySearch(array).find 11).toBe 6
    expect(array.accessCount).toBe 3

  xit 'finds a value in an array of odd length', ->
    array = new TracedArray 1, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 634
    expect(new BinarySearch(array).find 144).toBe 9
    expect(array.accessCount).toBe 2

  xit 'finds a value in an array of even length', ->
    array = new TracedArray 1, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377
    expect(new BinarySearch(array).find 21).toBe 5
    expect(array.accessCount).toBe 1

  xit 'identifies that a value is not included in the array', ->
    array = new TracedArray 1, 3, 4, 6, 8, 9, 11
    expect ->
      new BinarySearch(array).find 7
    .toThrow new Error 'value not in array'

  xit "a value smaller than the array's smallest value is not found", ->
    array = new TracedArray 1, 3, 4, 6, 8, 9, 11
    expect ->
      new BinarySearch(array).find 0
    .toThrow new Error 'value not in array'

  xit "a value larger than the array's largest value is not found", ->
    array = new TracedArray 1, 3, 4, 6, 8, 9, 11
    expect ->
      new BinarySearch(array).find 13
    .toThrow new Error 'value not in array'

  xit 'nothing is found in an empty array', ->
    array = new TracedArray
    expect ->
      new BinarySearch(array).find 1
    .toThrow new Error 'value not in array'

  xit 'nothing is found when the left and right bounds cross', ->
    array = new TracedArray 1, 2
    expect ->
      new BinarySearch(array).find 0
    .toThrow new Error 'value not in array'
