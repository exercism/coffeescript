Lineup = require './line-up'

describe 'Lineup', ->
  it 'format smallest non-exceptional ordinal numeral 4', ->
    result = Lineup.format 'Gianna', 4
    expect(result).toEqual 'Gianna, you are the 4th customer we serve today. Thank you!'

  xit 'format greatest single digit non-exceptional ordinal numeral 9', ->
    result = Lineup.format 'Maarten', 9
    expect(result).toEqual 'Maarten, you are the 9th customer we serve today. Thank you!'

  xit 'format non-exceptional ordinal numeral 5', ->
    result = Lineup.format 'Petronila', 5
    expect(result).toEqual 'Petronila, you are the 5th customer we serve today. Thank you!'

  xit 'format non-exceptional ordinal numeral 6', ->
    result = Lineup.format 'Attakullakulla', 6
    expect(result).toEqual 'Attakullakulla, you are the 6th customer we serve today. Thank you!'

  xit 'format non-exceptional ordinal numeral 7', ->
    result = Lineup.format 'Kate', 7
    expect(result).toEqual 'Kate, you are the 7th customer we serve today. Thank you!'

  xit 'format non-exceptional ordinal numeral 8', ->
    result = Lineup.format 'Maximiliano', 8
    expect(result).toEqual 'Maximiliano, you are the 8th customer we serve today. Thank you!'

  xit 'format exceptional ordinal numeral 1', ->
    result = Lineup.format 'Mary', 1
    expect(result).toEqual 'Mary, you are the 1st customer we serve today. Thank you!'

  xit 'format exceptional ordinal numeral 2', ->
    result = Lineup.format 'Haruto', 2
    expect(result).toEqual 'Haruto, you are the 2nd customer we serve today. Thank you!'

  xit 'format exceptional ordinal numeral 3', ->
    result = Lineup.format 'Henriette', 3
    expect(result).toEqual 'Henriette, you are the 3rd customer we serve today. Thank you!'

  xit 'format smallest two digit non-exceptional ordinal numeral 10', ->
    result = Lineup.format 'Alvarez', 10
    expect(result).toEqual 'Alvarez, you are the 10th customer we serve today. Thank you!'

  xit 'format non-exceptional ordinal numeral 11', ->
    result = Lineup.format 'Jacqueline', 11
    expect(result).toEqual 'Jacqueline, you are the 11th customer we serve today. Thank you!'

  xit 'format non-exceptional ordinal numeral 12', ->
    result = Lineup.format 'Juan', 12
    expect(result).toEqual 'Juan, you are the 12th customer we serve today. Thank you!'

  xit 'format non-exceptional ordinal numeral 13', ->
    result = Lineup.format 'Patricia', 13
    expect(result).toEqual 'Patricia, you are the 13th customer we serve today. Thank you!'

  xit 'format exceptional ordinal numeral 21', ->
    result = Lineup.format 'Washi', 21
    expect(result).toEqual 'Washi, you are the 21st customer we serve today. Thank you!'

  xit 'format exceptional ordinal numeral 62', ->
    result = Lineup.format 'Nayra', 62
    expect(result).toEqual 'Nayra, you are the 62nd customer we serve today. Thank you!'

  xit 'format exceptional ordinal numeral 100', ->
    result = Lineup.format 'John', 100
    expect(result).toEqual 'John, you are the 100th customer we serve today. Thank you!'

  xit 'format exceptional ordinal numeral 101', ->
    result = Lineup.format 'Zeinab', 101
    expect(result).toEqual 'Zeinab, you are the 101st customer we serve today. Thank you!'

  xit 'format non-exceptional ordinal numeral 112', ->
    result = Lineup.format 'Knud', 112
    expect(result).toEqual 'Knud, you are the 112th customer we serve today. Thank you!'

  xit 'format exceptional ordinal numeral 123', ->
    result = Lineup.format 'Yma', 123
    expect(result).toEqual 'Yma, you are the 123rd customer we serve today. Thank you!'
