
Raindrops = require './raindrops'

describe 'Raindrops', ->
  it 'the sound for 1 is 1', ->
    number = 1
    results = Raindrops.convert(number)
    expected = '1'
    expect(results).toEqual expected

  xit 'the sound for 3 is Pling', ->
    number = 3
    results = Raindrops.convert(number)
    expected = 'Pling'
    expect(results).toEqual expected

  xit 'the sound for 5 is Plang', ->
    number = 5
    results = Raindrops.convert(number)
    expected = 'Plang'
    expect(results).toEqual expected

  xit 'the sound for 7 is Plong', ->
    number = 7
    results = Raindrops.convert(number)
    expected = 'Plong'
    expect(results).toEqual expected

  xit 'the sound for 6 is Pling as it has a factor 3', ->
    number = 6
    results = Raindrops.convert(number)
    expected = 'Pling'
    expect(results).toEqual expected

  xit '2 to the power 3 does not make a raindrop sound as 3 is the exponent not the base', ->
    number = 8
    results = Raindrops.convert(number)
    expected = '8'
    expect(results).toEqual expected

  xit 'the sound for 9 is Pling as it has a factor 3', ->
    number = 9
    results = Raindrops.convert(number)
    expected = 'Pling'
    expect(results).toEqual expected

  xit 'the sound for 10 is Plang as it has a factor 5', ->
    number = 10
    results = Raindrops.convert(number)
    expected = 'Plang'
    expect(results).toEqual expected

  xit 'the sound for 14 is Plong as it has a factor of 7', ->
    number = 14
    results = Raindrops.convert(number)
    expected = 'Plong'
    expect(results).toEqual expected

  xit 'the sound for 15 is PlingPlang as it has factors 3 and 5', ->
    number = 15
    results = Raindrops.convert(number)
    expected = 'PlingPlang'
    expect(results).toEqual expected

  xit 'the sound for 21 is PlingPlong as it has factors 3 and 7', ->
    number = 21
    results = Raindrops.convert(number)
    expected = 'PlingPlong'
    expect(results).toEqual expected

  xit 'the sound for 25 is Plang as it has a factor 5', ->
    number = 25
    results = Raindrops.convert(number)
    expected = 'Plang'
    expect(results).toEqual expected

  xit 'the sound for 27 is Pling as it has a factor 3', ->
    number = 27
    results = Raindrops.convert(number)
    expected = 'Pling'
    expect(results).toEqual expected

  xit 'the sound for 35 is PlangPlong as it has factors 5 and 7', ->
    number = 35
    results = Raindrops.convert(number)
    expected = 'PlangPlong'
    expect(results).toEqual expected

  xit 'the sound for 49 is Plong as it has a factor 7', ->
    number = 49
    results = Raindrops.convert(number)
    expected = 'Plong'
    expect(results).toEqual expected

  xit 'the sound for 52 is 52', ->
    number = 52
    results = Raindrops.convert(number)
    expected = '52'
    expect(results).toEqual expected

  xit 'the sound for 105 is PlingPlangPlong as it has factors 3, 5 and 7', ->
    number = 105
    results = Raindrops.convert(number)
    expected = 'PlingPlangPlong'
    expect(results).toEqual expected

  xit 'the sound for 3125 is Plang as it has a factor 5', ->
    number = 3125
    results = Raindrops.convert(number)
    expected = 'Plang'
    expect(results).toEqual expected
