Grains = require './grains'

describe 'Grains', ->
  it 'grains on square 1', ->
    results = Grains.square(1)
    expected = 1
    expect(results).toEqual expected

  xit 'grains on square 2', ->
    results = Grains.square(2)
    expected = 2
    expect(results).toEqual expected
    
  xit 'grains on square 3', ->
    results = Grains.square(3)
    expected = 4
    expect(results).toEqual expected
    
  xit 'grains on square 4', ->
    results = Grains.square(4)
    expected = 8
    expect(results).toEqual expected
    
  xit 'grains on square 16', ->
    results = Grains.square(16)
    expected = 32768
    expect(results).toEqual expected
    
  xit 'grains on square 32', ->
    results = Grains.square(32)
    expected = 2147483648
    expect(results).toEqual expected
    
  xit 'grains on square 64', ->
    results = Grains.square(64)
    expected = 9223372036854775808
    expect(results).toEqual expected
    
  xit 'square 0 is invalid', ->
    expect ->
      Grains.square(0)
    .toThrow new Error 'square must be between 1 and 64'
    
  xit 'negative square is invalid', ->
    expect ->
      Grains.square(-1)
    .toThrow new Error 'square must be between 1 and 64'
    
  xit 'square greater than 64 is invalid', ->
    expect ->
      Grains.square(65)
    .toThrow new Error 'square must be between 1 and 64'
    
  xit 'returns the total number of grains on the board', ->
    results = Grains.total()
    expected = 18446744073709551615
    expect(results).toEqual expected
