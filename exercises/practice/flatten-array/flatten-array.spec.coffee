FlattenArray = require './flatten-array'

describe 'Flatten Array', ->
  it 'empty', ->
    values = []
    expected = []
    expect(FlattenArray.flatten values).toEqual expected

  xit 'no nesting', ->
    values = [0, 1, 2]
    expected = [0, 1, 2]
    expect(FlattenArray.flatten values).toEqual expected

  xit 'flattens array with just integers present', ->
    values = [1, [2, 3, 4, 5, 6, 7], 8]
    expected = [1, 2, 3, 4, 5, 6, 7, 8]
    expect(FlattenArray.flatten values).toEqual expected

  xit '5 level nesting', ->
    values = [0, 2, [[2, 3], 8, 100, 4, [[[50]]]], -2]
    expected = [0, 2, 2, 3, 8, 100, 4, 50, -2]
    expect(FlattenArray.flatten values).toEqual expected

  xit '6 level nesting', ->
    values = [1, [2, [[[3]]], [[4, [[[5]]]], 6, 7], 8]]
    expected = [1, 2, 3, 4, 5, 6, 7, 8]
    expect(FlattenArray.flatten values).toEqual expected

  xit 'null values are omitted from the final result', ->
    values = [1, 2, null]
    expected = [1, 2]
    expect(FlattenArray.flatten values).toEqual expected

  xit 'consecutive null values at the front of the array are omitted from the final result', ->
    values = [null, null, 3]
    expected = [3]
    expect(FlattenArray.flatten values).toEqual expected

  xit 'consecutive null values in the middle of the array are omitted from the final result', ->
    values = [1, null, null, 4]
    expected = [1, 4]
    expect(FlattenArray.flatten values).toEqual expected

  xit '6 level nest array with null values', ->
    values = [0, 2, [[2, 3], 8, [[100]], null, [[null]]], -2]
    expected = [0, 2, 2, 3, 8, 100, -2]
    expect(FlattenArray.flatten values).toEqual expected

  xit 'all values in nested array are null', ->
    values = [null, [[[null]]], null, null, [[null, null], null], null]
    expected = []
    expect(FlattenArray.flatten values).toEqual expected

  xit 'undefined values are omitted from the final result', ->
    values = [1, 2, undefined]
    expected = [1, 2]
    expect(FlattenArray.flatten values).toEqual expected
