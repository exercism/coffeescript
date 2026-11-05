# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/grains/canonical-data.json
# File last updated on 2026-11-05T02:04:51+00:00

Grains = require './grains'

describe "Grains", ->
  it "grains on square 1", ->
    expect(Grains.square 1).toEqual 1

  xit "grains on square 2", ->
    expect(Grains.square 2).toEqual 2

  xit "grains on square 3", ->
    expect(Grains.square 3).toEqual 4

  xit "grains on square 4", ->
    expect(Grains.square 4).toEqual 8

  xit "grains on square 16", ->
    expect(Grains.square 16).toEqual 32768

  xit "grains on square 32", ->
    expect(Grains.square 32).toEqual 2147483648

  xit "grains on square 64", ->
    expect(Grains.square 64).toEqual 9223372036854775808

  xit "square 0 is invalid", ->
    expect(-> Grains.square 0).toThrow new Error "square must be between 1 and 64"

  xit "negative square is invalid", ->
    expect(-> Grains.square -1).toThrow new Error "square must be between 1 and 64"

  xit "square greater than 64 is invalid", ->
    expect(-> Grains.square 65).toThrow new Error "square must be between 1 and 64"

  xit "returns the total number of grains on the board", ->
    expect(Grains.total()).toEqual 18446744073709551615
