CollatzConjecture = require './collatz-conjecture'

describe 'Collatz Conjecture', ->
  it 'zero steps for one', ->
    result = CollatzConjecture.steps 1
    expect(result).toEqual 0

  xit 'divide if even', ->
    result = CollatzConjecture.steps 16
    expect(result).toEqual 4

  xit 'even and odd steps', ->
    result = CollatzConjecture.steps 12
    expect(result).toEqual 9

  xit 'large number of even and odd steps', ->
    result = CollatzConjecture.steps 1000000
    expect(result).toEqual 152

  xit 'zero is an error', ->
    expect ->
      CollatzConjecture.steps 0
    .toThrow new Error "Only positive integers are allowed"

  xit 'negative value is an error', ->
    expect ->
      CollatzConjecture.steps -15
    .toThrow new Error "Only positive integers are allowed"
