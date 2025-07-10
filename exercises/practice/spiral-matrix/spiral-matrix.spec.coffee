SM = require './spiral-matrix'

describe 'Spiral Matrix', ->
  it 'empty spiral', ->
    expected = []
    expect(SM.spiralMatrix 0).toEqual expected

  xit 'trivial spiral', ->
    expected = [
      [1]
    ]
    expect(SM.spiralMatrix 1).toEqual expected

  xit 'spiral of size 2', ->
    expected = [
      [1, 2]
      [4, 3]
    ]
    expect(SM.spiralMatrix 2).toEqual expected

  xit 'spiral of size 3', ->
    expected = [
      [1, 2, 3]
      [8, 9, 4]
      [7, 6, 5]
    ]
    expect(SM.spiralMatrix 3).toEqual expected


  xit 'spiral of size 4', ->
    expected = [
      [1,  2,  3,  4]
      [12, 13, 14, 5]
      [11, 16, 15, 6]
      [10, 9,  8,  7]
    ]
    expect(SM.spiralMatrix 4).toEqual expected

  xit 'spiral of size 5', ->
    expected = [
      [1,  2,  3,  4,  5]
      [16, 17, 18, 19, 6]
      [15, 24, 25, 20, 7]
      [14, 23, 22, 21, 8]
      [13, 12, 11, 10, 9]
    ]
    expect(SM.spiralMatrix 5).toEqual expected

