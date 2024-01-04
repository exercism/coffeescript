
SquareRoot = require './square-root'

describe 'SquareRoot', ->
  it 'root of 1', ->
    radicand = 1
    results = SquareRoot.squareRoot(radicand)
    expected = 1
    expect(results).toEqual expected

  xit 'root of 4', ->
    radicand = 4
    results = SquareRoot.squareRoot(radicand)
    expected = 2
    expect(results).toEqual expected

  xit 'root of 25', ->
    radicand = 25
    results = SquareRoot.squareRoot(radicand)
    expected = 5
    expect(results).toEqual expected

  xit 'root of 81', ->
    radicand = 81
    results = SquareRoot.squareRoot(radicand)
    expected = 9
    expect(results).toEqual expected

  xit 'root of 196', ->
    radicand = 196
    results = SquareRoot.squareRoot(radicand)
    expected = 14
    expect(results).toEqual expected

  xit 'root of 65025', ->
    radicand = 65025
    results = SquareRoot.squareRoot(radicand)
    expected = 255
    expect(results).toEqual expected
