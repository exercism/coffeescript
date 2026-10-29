# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/all-your-base/canonical-data.json
# File last updated on 2026-10-29T04:39:31+00:00

AllYourBase = require './all-your-base'

describe "All Your Base", ->
  it "single bit one to decimal", ->
    input = { "inputBase": 2, "digits": [1], "outputBase": 10 }
    expect(AllYourBase input).toEqual [1]

  xit "binary to single decimal", ->
    input = { "inputBase": 2, "digits": [1, 0, 1], "outputBase": 10 }
    expect(AllYourBase input).toEqual [5]

  xit "single decimal to binary", ->
    input = { "inputBase": 10, "digits": [5], "outputBase": 2 }
    expect(AllYourBase input).toEqual [1, 0, 1]

  xit "binary to multiple decimal", ->
    input = { "inputBase": 2, "digits": [1, 0, 1, 0, 1, 0], "outputBase": 10 }
    expect(AllYourBase input).toEqual [4, 2]

  xit "decimal to binary", ->
    input = { "inputBase": 10, "digits": [4, 2], "outputBase": 2 }
    expect(AllYourBase input).toEqual [1, 0, 1, 0, 1, 0]

  xit "trinary to hexadecimal", ->
    input = { "inputBase": 3, "digits": [1, 1, 2, 0], "outputBase": 16 }
    expect(AllYourBase input).toEqual [2, 10]

  xit "hexadecimal to trinary", ->
    input = { "inputBase": 16, "digits": [2, 10], "outputBase": 3 }
    expect(AllYourBase input).toEqual [1, 1, 2, 0]

  xit "15-bit integer", ->
    input = { "inputBase": 97, "digits": [3, 46, 60], "outputBase": 73 }
    expect(AllYourBase input).toEqual [6, 10, 45]

  xit "empty list", ->
    input = { "inputBase": 2, "digits": [], "outputBase": 10 }
    expect(AllYourBase input).toEqual [0]

  xit "single zero", ->
    input = { "inputBase": 10, "digits": [0], "outputBase": 2 }
    expect(AllYourBase input).toEqual [0]

  xit "multiple zeros", ->
    input = { "inputBase": 10, "digits": [0, 0, 0], "outputBase": 2 }
    expect(AllYourBase input).toEqual [0]

  xit "leading zeros", ->
    input = { "inputBase": 7, "digits": [0, 6, 0], "outputBase": 10 }
    expect(AllYourBase input).toEqual [4, 2]

  xit "input base is one", ->
    input = { "inputBase": 1, "digits": [0], "outputBase": 10 }
    expect(-> AllYourBase input).toThrow new Error "input base must be >= 2"

  xit "input base is zero", ->
    input = { "inputBase": 0, "digits": [], "outputBase": 10 }
    expect(-> AllYourBase input).toThrow new Error "input base must be >= 2"

  xit "input base is negative", ->
    input = { "inputBase": -2, "digits": [1], "outputBase": 10 }
    expect(-> AllYourBase input).toThrow new Error "input base must be >= 2"

  xit "negative digit", ->
    input = { "inputBase": 2, "digits": [1, -1, 1, 0, 1, 0], "outputBase": 10 }
    expect(-> AllYourBase input).toThrow new Error "all digits must satisfy 0 <= d < input base"

  xit "invalid positive digit", ->
    input = { "inputBase": 2, "digits": [1, 2, 1, 0, 1, 0], "outputBase": 10 }
    expect(-> AllYourBase input).toThrow new Error "all digits must satisfy 0 <= d < input base"

  xit "output base is one", ->
    input = { "inputBase": 2, "digits": [1, 0, 1, 0, 1, 0], "outputBase": 1 }
    expect(-> AllYourBase input).toThrow new Error "output base must be >= 2"

  xit "output base is zero", ->
    input = { "inputBase": 10, "digits": [7], "outputBase": 0 }
    expect(-> AllYourBase input).toThrow new Error "output base must be >= 2"

  xit "output base is negative", ->
    input = { "inputBase": 2, "digits": [1], "outputBase": -7 }
    expect(-> AllYourBase input).toThrow new Error "output base must be >= 2"

  xit "both bases are negative", ->
    input = { "inputBase": -2, "digits": [1], "outputBase": -7 }
    expect(-> AllYourBase input).toThrow new Error "input base must be >= 2"
