# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/darts/canonical-data.json
# File last updated on 2026-10-30T22:10:01+00:00

Darts = require './darts'

describe "Darts", ->
  it "Missed target", ->
    expect(Darts.score -9, 9).toEqual 0

  xit "On the outer circle", ->
    expect(Darts.score 0, 10).toEqual 1

  xit "On the middle circle", ->
    expect(Darts.score -5, 0).toEqual 5

  xit "On the inner circle", ->
    expect(Darts.score 0, -1).toEqual 10

  xit "Exactly on center", ->
    expect(Darts.score 0, 0).toEqual 10

  xit "Near the center", ->
    expect(Darts.score -0.1, -0.1).toEqual 10

  xit "Just within the inner circle", ->
    expect(Darts.score 0.7, 0.7).toEqual 10

  xit "Just outside the inner circle", ->
    expect(Darts.score 0.8, -0.8).toEqual 5

  xit "Just within the middle circle", ->
    expect(Darts.score -3.5, 3.5).toEqual 5

  xit "Just outside the middle circle", ->
    expect(Darts.score -3.6, -3.6).toEqual 1

  xit "Just within the outer circle", ->
    expect(Darts.score -7.0, 7.0).toEqual 1

  xit "Just outside the outer circle", ->
    expect(Darts.score 7.1, -7.1).toEqual 0

  xit "Asymmetric position between the inner and middle circles", ->
    expect(Darts.score 0.5, -4).toEqual 5
