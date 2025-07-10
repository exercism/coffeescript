Yacht = require './yacht'

describe 'Yacht', ->
  it 'Yacht', ->
    result = Yacht.score [5, 5, 5, 5, 5], 'yacht'
    expect(result).toEqual 50

  xit 'Not Yacht', ->
    result = Yacht.score [1, 3, 3, 2, 5], 'yacht'
    expect(result).toEqual 0

  xit 'Ones', ->
    result = Yacht.score [1, 1, 1, 3, 5], 'ones'
    expect(result).toEqual 3

  xit 'Ones, out of order', ->
    result = Yacht.score [3, 1, 1, 5, 1], 'ones'
    expect(result).toEqual 3

  xit 'No ones', ->
    result = Yacht.score [4, 3, 6, 5, 5], 'ones'
    expect(result).toEqual 0

  xit 'Twos', ->
    result = Yacht.score [2, 3, 4, 5, 6], 'twos'
    expect(result).toEqual 2

  xit 'Fours', ->
    result = Yacht.score [1, 4, 1, 4, 1], 'fours'
    expect(result).toEqual 8

  xit 'Yacht counted as threes', ->
    result = Yacht.score [3, 3, 3, 3, 3], 'threes'
    expect(result).toEqual 15

  xit 'Yacht of threes counted as fives', ->
    result = Yacht.score [3, 3, 3, 3, 3], 'fives'
    expect(result).toEqual 0

  xit 'Fives', ->
    result = Yacht.score [1, 5, 3, 5, 3], 'fives'
    expect(result).toEqual 10

  xit 'Sixes', ->
    result = Yacht.score [2, 3, 4, 5, 6], 'sixes'
    expect(result).toEqual 6

  xit 'Full house two small, three big', ->
    result = Yacht.score [2, 2, 4, 4, 4], 'full house'
    expect(result).toEqual 16

  xit 'Full house three small, two big', ->
    result = Yacht.score [5, 3, 3, 5, 3], 'full house'
    expect(result).toEqual 19

  xit 'Two pair is not a full house', ->
    result = Yacht.score [2, 2, 4, 4, 5], 'full house'
    expect(result).toEqual 0

  xit 'Four of a kind is not a full house', ->
    result = Yacht.score [1, 4, 4, 4, 4], 'full house'
    expect(result).toEqual 0

  xit 'Yacht is not a full house', ->
    result = Yacht.score [2, 2, 2, 2, 2], 'full house'
    expect(result).toEqual 0

  xit 'Four of a Kind', ->
    result = Yacht.score [6, 6, 4, 6, 6], 'four of a kind'
    expect(result).toEqual 24

  xit 'Yacht can be scored as Four of a Kind', ->
    result = Yacht.score [3, 3, 3, 3, 3], 'four of a kind'
    expect(result).toEqual 12

  xit 'Full house is not Four of a Kind', ->
    result = Yacht.score [3, 3, 3, 5, 5], 'four of a kind'
    expect(result).toEqual 0

  xit 'Little Straight', ->
    result = Yacht.score [3, 5, 4, 1, 2], 'little straight'
    expect(result).toEqual 30

  xit 'Little Straight as Big Straight', ->
    result = Yacht.score [1, 2, 3, 4, 5], 'big straight'
    expect(result).toEqual 0

  xit 'Four in order but not a little straight', ->
    result = Yacht.score [1, 1, 2, 3, 4], 'little straight'
    expect(result).toEqual 0

  xit 'No pairs but not a little straight', ->
    result = Yacht.score [1, 2, 3, 4, 6], 'little straight'
    expect(result).toEqual 0

  xit 'Minimum is 1, maximum is 5, but not a little straight', ->
    result = Yacht.score [1, 1, 3, 4, 5], 'little straight'
    expect(result).toEqual 0

  xit 'Big Straight', ->
    result = Yacht.score [4, 6, 2, 5, 3], 'big straight'
    expect(result).toEqual 30

  xit 'Big Straight as little straight', ->
    result = Yacht.score [6, 5, 4, 3, 2], 'little straight'
    expect(result).toEqual 0

  xit 'No pairs but not a big straight', ->
    result = Yacht.score [6, 5, 4, 3, 1], 'big straight'
    expect(result).toEqual 0

  xit 'Choice', ->
    result = Yacht.score [3, 3, 5, 6, 6], 'choice'
    expect(result).toEqual 23

  xit 'Yacht as choice', ->
    result = Yacht.score [2, 2, 2, 2, 2], 'choice'
    expect(result).toEqual 10
