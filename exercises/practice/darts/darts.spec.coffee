Darts = require './darts'

describe 'Darts', ->
  it 'Missed target', ->
    x = -9
    y = 9
    results = Darts.score(x, y)
    expected = 0
    expect(results).toEqual expected

  xit 'On the outer circle', ->
    x = 0
    y = 10
    results = Darts.score(x, y)
    expected = 1
    expect(results).toEqual expected

  xit 'On the middle circle', ->
    x = -5
    y = 0
    results = Darts.score(x, y)
    expected = 5
    expect(results).toEqual expected

  xit 'On the inner circle', ->
    x = 0
    y = -1
    results = Darts.score(x, y)
    expected = 10
    expect(results).toEqual expected

  xit 'Exactly on center', ->
    x = 0
    y = 0
    results = Darts.score(x, y)
    expected = 10
    expect(results).toEqual expected

  xit 'Near the center', ->
    x = -0.1
    y = -0.1
    results = Darts.score(x, y)
    expected = 10
    expect(results).toEqual expected

  xit 'Just within the inner circle', ->
    x = 0.7
    y = 0.7
    results = Darts.score(x, y)
    expected = 10
    expect(results).toEqual expected

  xit 'Just outside the inner circle', ->
    x = 0.8
    y = -0.8
    results = Darts.score(x, y)
    expected = 5
    expect(results).toEqual expected

  xit 'Just within the middle circle', ->
    x = -3.5
    y = 3.5
    results = Darts.score(x, y)
    expected = 5
    expect(results).toEqual expected

  xit 'Just outside the middle circle', ->
    x = -3.6
    y = -3.6
    results = Darts.score(x, y)
    expected = 1
    expect(results).toEqual expected

  xit 'Just within the outer circle', ->
    x = -7.0
    y = 7.0
    results = Darts.score(x, y)
    expected = 1
    expect(results).toEqual expected

  xit 'Just outside the outer circle', ->
    x = 7.1
    y = -7.1
    results = Darts.score(x, y)
    expected = 0
    expect(results).toEqual expected

  xit 'Asymmetric position between the inner and middle circles', ->
    x = 0.5
    y = -4
    results = Darts.score(x, y)
    expected = 5
    expect(results).toEqual expected
