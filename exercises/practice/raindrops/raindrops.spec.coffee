# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/raindrops/canonical-data.json
# File last updated on 2026-11-04T23:50:32+00:00

Raindrops = require './raindrops'

describe "Raindrops", ->
  it "the sound for 1 is 1", ->
    expect(Raindrops.convert 1).toEqual "1"

  xit "the sound for 3 is Pling", ->
    expect(Raindrops.convert 3).toEqual "Pling"

  xit "the sound for 5 is Plang", ->
    expect(Raindrops.convert 5).toEqual "Plang"

  xit "the sound for 7 is Plong", ->
    expect(Raindrops.convert 7).toEqual "Plong"

  xit "the sound for 6 is Pling as it has a factor 3", ->
    expect(Raindrops.convert 6).toEqual "Pling"

  xit "2 to the power 3 does not make a raindrop sound as 3 is the exponent not the base", ->
    expect(Raindrops.convert 8).toEqual "8"

  xit "the sound for 9 is Pling as it has a factor 3", ->
    expect(Raindrops.convert 9).toEqual "Pling"

  xit "the sound for 10 is Plang as it has a factor 5", ->
    expect(Raindrops.convert 10).toEqual "Plang"

  xit "the sound for 14 is Plong as it has a factor of 7", ->
    expect(Raindrops.convert 14).toEqual "Plong"

  xit "the sound for 15 is PlingPlang as it has factors 3 and 5", ->
    expect(Raindrops.convert 15).toEqual "PlingPlang"

  xit "the sound for 21 is PlingPlong as it has factors 3 and 7", ->
    expect(Raindrops.convert 21).toEqual "PlingPlong"

  xit "the sound for 25 is Plang as it has a factor 5", ->
    expect(Raindrops.convert 25).toEqual "Plang"

  xit "the sound for 27 is Pling as it has a factor 3", ->
    expect(Raindrops.convert 27).toEqual "Pling"

  xit "the sound for 35 is PlangPlong as it has factors 5 and 7", ->
    expect(Raindrops.convert 35).toEqual "PlangPlong"

  xit "the sound for 49 is Plong as it has a factor 7", ->
    expect(Raindrops.convert 49).toEqual "Plong"

  xit "the sound for 52 is 52", ->
    expect(Raindrops.convert 52).toEqual "52"

  xit "the sound for 105 is PlingPlangPlong as it has factors 3, 5 and 7", ->
    expect(Raindrops.convert 105).toEqual "PlingPlangPlong"

  xit "the sound for 3125 is Plang as it has a factor 5", ->
    expect(Raindrops.convert 3125).toEqual "Plang"
