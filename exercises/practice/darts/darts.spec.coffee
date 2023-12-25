Darts = require './darts'

describe 'Darts', ->
  darts = new Darts()
  it 'Missed target', ->
    x = -9
    y = 9
    results = darts.score(x, y)
    expected = 0
    expect(results).toEqual expected

  it 'On the outer circle', ->
    x = 0
    y = 10
    results = darts.score(x, y)
    expected = 1
    expect(results).toEqual expected

  it 'On the middle circle', ->
    x = -5
    y = 0
    results = darts.score(x, y)
    expected = 5
    expect(results).toEqual expected

  it 'On the inner circle', ->
    x = 0
    y = -1
    results = darts.score(x, y)
    expected = 10
    expect(results).toEqual expected

  it 'Exactly on center', ->
    x = 0
    y = 0
    results = darts.score(x, y)
    expected = 10
    expect(results).toEqual expected

  it 'Near the center', ->
    x = -0.1
    y = -0.1
    results = darts.score(x, y)
    expected = 10
    expect(results).toEqual expected

  it 'Just within the inner circle', ->
    x = 0.7
    y = 0.7
    results = darts.score(x, y)
    expected = 10
    expect(results).toEqual expected

  it 'Just outside the inner circle', ->
    x = 0.8
    y = -0.8
    results = darts.score(x, y)
    expected = 5
    expect(results).toEqual expected

  it 'Just within the middle circle', ->
    x = -3.5
    y = 3.5
    results = darts.score(x, y)
    expected = 5
    expect(results).toEqual expected

  it 'Just outside the middle circle', ->
    x = -3.6
    y = -3.6
    results = darts.score(x, y)
    expected = 1
    expect(results).toEqual expected

  it 'Just within the outer circle', ->
    x = -7.0
    y = 7.0
    results = darts.score(x, y)
    expected = 1
    expect(results).toEqual expected

  it 'Just outside the outer circle', ->
    x = 7.1
    y = -7.1
    results = darts.score(x, y)
    expected = 0
    expect(results).toEqual expected

  it 'Asymmetric position between the inner and middle circles', ->
    x = 0.5
    y = -4
    results = darts.score(x, y)
    expected = 5
    expect(results).toEqual expected
