Leap = require './leap'

describe 'Leap', ->
  leap = new Leap()
  it 'year not divisible by 4 is common year', ->
    result = leap.leapYear(2015)
    expect(result).toEqual false

  xit 'year divisible by 2, not divisible by 4 is common year', ->
    result = leap.leapYear(1970)
    expect(result).toEqual false

  xit 'year divisible by 4, not divisible by 100 is leap year', ->
    result = leap.leapYear(1996)
    expect(result).toEqual true

  xit 'year divisible by 4 and 5 is still a leap year', ->
    result = leap.leapYear(1960)
    expect(result).toEqual true

  xit 'year divisible by 100, not divisible by 400 is common year', ->
    result = leap.leapYear(2100)
    expect(result).toEqual false

  xit 'year divisible by 100 but not by 3 is still not a leap year', ->
    result = leap.leapYear 1900
    expect(result).toEqual false

  xit 'year divisible by 400 is leap year', ->
    result = leap.leapYear 2000 
    expect(result).toEqual true

  xit 'year divisible by 400 but not by 125 is still a leap year', ->
    result = leap.leapYear(2400)
    expect(result).toEqual true

  xit 'year divisible by 200, not divisible by 400 is common year', ->
    result = leap.leapYear(1800)
    expect(result).toEqual false
