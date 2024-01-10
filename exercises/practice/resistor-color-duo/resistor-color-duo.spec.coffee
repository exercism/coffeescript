ResistorColorDuo = require './resistor-color-duo'

describe 'ResistorColorDuo', ->
  it 'Brown and black', ->
    results = ResistorColorDuo.value(['brown', 'black'])
    expected = 10
    expect(results).toEqual expected

  xit 'Blue and grey', ->
    results = ResistorColorDuo.value(['blue', 'grey'])
    expected = 68
    expect(results).toEqual expected

  xit 'Yellow and violet', ->
    results = ResistorColorDuo.value(['yellow', 'violet'])
    expected = 47
    expect(results).toEqual expected

  xit 'White and red', ->
    results = ResistorColorDuo.value(['white', 'red'])
    expected = 92
    expect(results).toEqual expected

  xit 'Orange and orange', ->
    results = ResistorColorDuo.value(['orange', 'orange'])
    expected = 33
    expect(results).toEqual expected

  xit 'Ignore additional colors', ->
    results = ResistorColorDuo.value(['green', 'brown', 'orange'])
    expected = 51
    expect(results).toEqual expected

  xit 'Black and brown, one-digit', ->
    results = ResistorColorDuo.value(['black', 'brown'])
    expected = 1
    expect(results).toEqual expected
