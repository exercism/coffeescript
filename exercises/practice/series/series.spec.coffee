Series = require './series'

describe 'Series', ->
  it 'slices of one from one', ->
    result = Series.slices '1', 1
    expect(result).toEqual ['1']

  xit 'slices of one from two', ->
    result = Series.slices '12', 1
    expect(result).toEqual ['1', '2']

  xit 'slices of two', ->
    result = Series.slices '35', 2
    expect(result).toEqual ['35']

  xit 'slices of two overlap', ->
    result = Series.slices '9142', 2
    expect(result).toEqual ['91', '14', '42']

  xit 'slices can include duplicates', ->
    result = Series.slices '777777', 3
    expect(result).toEqual ['777', '777', '777', '777']

  xit 'slices of a long series', ->
    result = Series.slices '918493904243', 5
    expect(result).toEqual [
      '91849'
      '18493'
      '84939'
      '49390'
      '93904'
      '39042'
      '90424'
      '04243'
    ]

  xit 'slice length is too large', ->
    expect ->
      Series.slices '12345', 6
    .toThrow new Error "slice length cannot be greater than series length"

  xit 'slice length is way too large', ->
    expect ->
      Series.slices '12345', 42
    .toThrow new Error "slice length cannot be greater than series length"

  xit 'slice length cannot be zero', ->
    expect ->
      Series.slices '12345', 0
    .toThrow new Error "slice length cannot be zero"

  xit 'slice length cannot be negative', ->
    expect ->
      Series.slices '123', -1
    .toThrow new Error "slice length cannot be negative"

  xit 'empty series is invalid', ->
    expect ->
      Series.slices '', 1
    .toThrow new Error "series cannot be empty"
