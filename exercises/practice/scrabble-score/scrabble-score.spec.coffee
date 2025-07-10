ScrabbleScore = require './scrabble-score'

describe 'ScrabbleScore', ->
  it 'lowercase letter', ->
    expect(ScrabbleScore.score('a')).toEqual(1)

  xit 'uppercase letter', ->
    expect(ScrabbleScore.score('A')).toEqual(1)

  xit 'valuable letter', ->
    expect(ScrabbleScore.score('f')).toEqual(4)

  xit 'short word', -> 
    expect(ScrabbleScore.score('at')).toEqual(2)

  xit 'short, valuable word', ->
    expect(ScrabbleScore.score('zoo')).toEqual(12)

  xit 'medium word', ->
    expect(ScrabbleScore.score('street')).toEqual(6)

  xit 'medium, valuable word', ->
    expect(ScrabbleScore.score('quirky')).toEqual(22)

  xit 'long, mixed-case word', ->
    expect(ScrabbleScore.score('OxyphenButazone')).toEqual(41)

  xit 'english-like word', ->
    expect(ScrabbleScore.score('pinata')).toEqual(8)

  xit 'empty input', ->
    expect(ScrabbleScore.score('')).toEqual(0)

  xit 'entire alphabet available', ->
    expect(ScrabbleScore.score('abcdefghijklmnopqrstuvwxyz')).toEqual(87)
