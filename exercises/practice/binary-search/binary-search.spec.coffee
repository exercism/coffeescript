BinarySearch = require './binary-search'

describe 'Binary Search', ->
  it 'finds a value in an array wxith one element', ->
    array = [6]
    result = new BinarySearch(array).find 6
    expect(result).toBe 0

  xit 'finds a value in the middle of an array', ->
    array = [1, 3, 4, 6, 8, 9, 11]
    result = new BinarySearch(array).find 6
    expect(result).toBe 3

  xit 'finds a value at the beginning of an array', ->
    array = [1, 3, 4, 6, 8, 9, 11]
    result = new BinarySearch(array).find 1
    expect(result).toBe 0

  xit 'finds a value at the end of an array', ->
    array = [1, 3, 4, 6, 8, 9, 11]
    result = new BinarySearch(array).find 11
    expect(result).toBe 6

  xit 'finds a value in an array of odd length', ->
    array = [1, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 634]
    result = new BinarySearch(array).find 144
    expect(result).toBe 9

  xit 'finds a value in an array of even length', ->
    array = [1, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377]
    result = new BinarySearch(array).find 21
    expect(result).toBe 5

  xit 'identifies that a value is not included in the array', ->
    array = [1, 3, 4, 6, 8, 9, 11]
    expect ->
      new BinarySearch(array).find 7
    .toThrow new Error 'value not in array'

  xit "a value smaller than the array's smallest value is not found", ->
    array = [1, 3, 4, 6, 8, 9, 11]
    expect ->
      new BinarySearch(array).find 0
    .toThrow new Error 'value not in array'

  xit "a value larger than the array's largest value is not found", ->
    array = [1, 3, 4, 6, 8, 9, 11]
    expect ->
      new BinarySearch(array).find 13
    .toThrow new Error 'value not in array'

  xit 'nothing is found in an empty array', ->
    array = []
    expect ->
      new BinarySearch(array).find 1
    .toThrow new Error 'value not in array'

  xit 'nothing is found when the left and right bounds cross', ->
    array = [1, 2]
    expect ->
      new BinarySearch(array).find 0
    .toThrow new Error 'value not in array'
