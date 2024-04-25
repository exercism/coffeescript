Gigasecond = require './gigasecond'

describe 'Gigasecond', ->
  it 'date only specification of time', ->
    results = Gigasecond.add new Date Date.UTC 2011, 3, 25
    expected = new Date Date.UTC 2043, 0, 1, 1, 46, 40
    expect(results).toEqual expected

  xit 'second test for date only specification of time', ->
    results = Gigasecond.add new Date Date.UTC 1977, 5, 13
    expected = new Date Date.UTC 2009, 1, 19, 1, 46, 40
    expect(results).toEqual expected

  xit 'third test for date only specification of time', ->
    results = Gigasecond.add new Date Date.UTC 1959, 6, 19
    expected = new Date Date.UTC 1991, 2, 27, 1, 46, 40
    expect(results).toEqual expected

  xit 'full time specified', ->
    results = Gigasecond.add new Date Date.UTC 2015, 0, 24, 22
    expected = new Date Date.UTC 2046, 9, 2, 23, 46, 40
    expect(results).toEqual expected

  xit 'full time with day roll-over', ->
    results = Gigasecond.add new Date Date.UTC 2015, 0, 24, 23, 59, 59
    expected = new Date Date.UTC 2046, 9, 3, 1, 46, 39
    expect(results).toEqual expected

  xit 'does not mutate the input', ->
    moment = new Date Date.UTC 2015, 0, 24, 23, 59, 59
    Gigasecond.add moment
    expect(moment).toEqual new Date Date.UTC 2015, 0, 24, 23, 59, 59
