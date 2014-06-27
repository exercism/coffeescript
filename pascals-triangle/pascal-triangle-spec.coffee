Pascal = require './example.coffee'

describe 'Pascal', ->
  it 'with one row', ->
    arr = new Pascal(1)
    expect(arr.array).toEqual [[1]]

  xit 'with two rows', ->
    arr = new Pascal(2)
    expect(arr.array).toEqual [[1], [1,1]]

  xit 'with three rows', ->
    arr = new Pascal(3)
    expect(arr.array).toEqual [[1], [1,1], [1,2,1]]

  xit 'with four rows', ->
    arr = new Pascal(4)
    expect(arr.array).toEqual [[1], [1,1], [1,2,1], [1,3,3,1]]

  xit 'with five rows', ->
    arr = new Pascal(5)
    expect(arr.array).toEqual [[1], [1,1], [1,2,1], [1,3,3,1], [1,4,6,4,1]]

  xit 'should equal 20th row', ->
    arr = new Pascal(20)
    expect(arr.array[19]).toEqual [1, 19, 171, 969, 3876, 11628, 27132, 50388, 75582, 92378, 92378, 75582, 50388, 27132, 11628, 3876, 969, 171, 19, 1]

