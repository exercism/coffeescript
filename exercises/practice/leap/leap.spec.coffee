# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/leap/canonical-data.json
# File last updated on 2026-10-30T23:56:26+00:00

Leap = require './leap'

describe "Leap", ->
  it "year not divisible by 4 in common year", ->
    expect(Leap.leapYear 2015).toEqual false

  xit "year divisible by 2, not divisible by 4 in common year", ->
    expect(Leap.leapYear 1970).toEqual false

  xit "year divisible by 4, not divisible by 100 in leap year", ->
    expect(Leap.leapYear 1996).toEqual true

  xit "year divisible by 4 and 5 is still a leap year", ->
    expect(Leap.leapYear 1960).toEqual true

  xit "year divisible by 100, not divisible by 400 in common year", ->
    expect(Leap.leapYear 2100).toEqual false

  xit "year divisible by 100 but not by 3 is still not a leap year", ->
    expect(Leap.leapYear 1900).toEqual false

  xit "year divisible by 400 is leap year", ->
    expect(Leap.leapYear 2000).toEqual true

  xit "year divisible by 400 but not by 125 is still a leap year", ->
    expect(Leap.leapYear 2400).toEqual true

  xit "year divisible by 200, not divisible by 400 in common year", ->
    expect(Leap.leapYear 1800).toEqual false
