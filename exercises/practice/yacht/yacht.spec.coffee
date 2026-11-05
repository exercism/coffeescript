# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/yacht/canonical-data.json
# File last updated on 2026-11-01T03:29:51+00:00

Yacht = require './yacht'

describe "Yacht", ->
  it "Yacht", ->
    expect(Yacht.score [5, 5, 5, 5, 5], "yacht").toEqual 50

  xit "Not Yacht", ->
    expect(Yacht.score [1, 3, 3, 2, 5], "yacht").toEqual 0

  xit "Ones", ->
    expect(Yacht.score [1, 1, 1, 3, 5], "ones").toEqual 3

  xit "Ones, out of order", ->
    expect(Yacht.score [3, 1, 1, 5, 1], "ones").toEqual 3

  xit "No ones", ->
    expect(Yacht.score [4, 3, 6, 5, 5], "ones").toEqual 0

  xit "Twos", ->
    expect(Yacht.score [2, 3, 4, 5, 6], "twos").toEqual 2

  xit "Fours", ->
    expect(Yacht.score [1, 4, 1, 4, 1], "fours").toEqual 8

  xit "Yacht counted as threes", ->
    expect(Yacht.score [3, 3, 3, 3, 3], "threes").toEqual 15

  xit "Yacht of 3s counted as fives", ->
    expect(Yacht.score [3, 3, 3, 3, 3], "fives").toEqual 0

  xit "Fives", ->
    expect(Yacht.score [1, 5, 3, 5, 3], "fives").toEqual 10

  xit "Sixes", ->
    expect(Yacht.score [2, 3, 4, 5, 6], "sixes").toEqual 6

  xit "Full house two small, three big", ->
    expect(Yacht.score [2, 2, 4, 4, 4], "full house").toEqual 16

  xit "Full house three small, two big", ->
    expect(Yacht.score [5, 3, 3, 5, 3], "full house").toEqual 19

  xit "Two pair is not a full house", ->
    expect(Yacht.score [2, 2, 4, 4, 5], "full house").toEqual 0

  xit "Four of a kind is not a full house", ->
    expect(Yacht.score [1, 4, 4, 4, 4], "full house").toEqual 0

  xit "Yacht is not a full house", ->
    expect(Yacht.score [2, 2, 2, 2, 2], "full house").toEqual 0

  xit "Four of a Kind", ->
    expect(Yacht.score [6, 6, 4, 6, 6], "four of a kind").toEqual 24

  xit "Yacht can be scored as Four of a Kind", ->
    expect(Yacht.score [3, 3, 3, 3, 3], "four of a kind").toEqual 12

  xit "Full house is not Four of a Kind", ->
    expect(Yacht.score [3, 3, 3, 5, 5], "four of a kind").toEqual 0

  xit "Little Straight", ->
    expect(Yacht.score [3, 5, 4, 1, 2], "little straight").toEqual 30

  xit "Little Straight as Big Straight", ->
    expect(Yacht.score [1, 2, 3, 4, 5], "big straight").toEqual 0

  xit "Four in order but not a little straight", ->
    expect(Yacht.score [1, 1, 2, 3, 4], "little straight").toEqual 0

  xit "No pairs but not a little straight", ->
    expect(Yacht.score [1, 2, 3, 4, 6], "little straight").toEqual 0

  xit "Minimum is 1, maximum is 5, but not a little straight", ->
    expect(Yacht.score [1, 1, 3, 4, 5], "little straight").toEqual 0

  xit "Big Straight", ->
    expect(Yacht.score [4, 6, 2, 5, 3], "big straight").toEqual 30

  xit "Big Straight as little straight", ->
    expect(Yacht.score [6, 5, 4, 3, 2], "little straight").toEqual 0

  xit "No pairs but not a big straight", ->
    expect(Yacht.score [6, 5, 4, 3, 1], "big straight").toEqual 0

  xit "Choice", ->
    expect(Yacht.score [3, 3, 5, 6, 6], "choice").toEqual 23

  xit "Yacht as choice", ->
    expect(Yacht.score [2, 2, 2, 2, 2], "choice").toEqual 10
