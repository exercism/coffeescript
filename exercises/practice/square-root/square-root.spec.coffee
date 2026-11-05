# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/square-root/canonical-data.json
# File last updated on 2026-11-04T23:50:34+00:00

SquareRoot = require './square-root'

describe "Square Root", ->
  it "root of 1", ->
    expect(SquareRoot.squareRoot 1).toEqual 1

  xit "root of 4", ->
    expect(SquareRoot.squareRoot 4).toEqual 2

  xit "root of 25", ->
    expect(SquareRoot.squareRoot 25).toEqual 5

  xit "root of 81", ->
    expect(SquareRoot.squareRoot 81).toEqual 9

  xit "root of 196", ->
    expect(SquareRoot.squareRoot 196).toEqual 14

  xit "root of 65025", ->
    expect(SquareRoot.squareRoot 65025).toEqual 255
