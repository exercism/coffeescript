AllYourBase = require './all-your-base'

describe "AllYourBase", -> 
  it "single bit one to decimal", ->
    input = inputBase: 2, outputBase: 10
    digits = [1]
    expected = [1]
    expect(new AllYourBase(input).rebase(digits)).toEqual expected

  xit "binary to single decimal", ->
    input = inputBase: 2, outputBase: 10
    digits = [1, 0, 1]
    expected = [5]
    expect(new AllYourBase(input).rebase(digits)).toEqual expected

  xit "single decimal to binary", ->
    input = inputBase: 10, outputBase: 2
    digits = [5]
    expected = [1, 0, 1]
    expect(new AllYourBase(input).rebase(digits)).toEqual expected

  xit "binary to multiple decimal", ->
    input = inputBase: 2, outputBase: 10
    digits = [1, 0, 1, 0, 1, 0]
    expected = [4, 2]
    expect(new AllYourBase(input).rebase(digits)).toEqual expected

  xit "decimal to binary", ->
    input = inputBase: 10, outputBase: 2
    digits = [4, 2]
    expected = [1, 0, 1, 0, 1, 0]
    expect(new AllYourBase(input).rebase(digits)).toEqual expected

  xit "trinary to hexadecimal", ->
    input = inputBase: 3, outputBase: 16
    digits = [1, 1, 2, 0]
    expected = [2, 10]
    expect(new AllYourBase(input).rebase(digits)).toEqual expected

  xit "hexadecimal to trinary", ->
    input = inputBase: 16, outputBase: 3
    digits = [2, 10]
    expected = [1, 1, 2, 0]
    expect(new AllYourBase(input).rebase(digits)).toEqual expected

  xit "15-bit integer", ->
    input = inputBase: 97, outputBase: 73
    digits = [3, 46, 60]
    expected = [6, 10, 45]
    expect(new AllYourBase(input).rebase(digits)).toEqual expected

  xit "empty list", ->
    input = inputBase: 2, outputBase: 10
    digits = []
    expected = [0]
    expect(new AllYourBase(input).rebase(digits)).toEqual expected

  xit "single zero", ->
    input = inputBase: 10, outputBase: 2
    digits = [0]
    expected = [0]
    expect(new AllYourBase(input).rebase(digits)).toEqual expected

  xit "multiple zeros", ->
    input = inputBase: 10, outputBase: 2
    digits = [0, 0, 0]
    expected = [0]
    expect(new AllYourBase(input).rebase(digits)).toEqual expected

  xit "leading zeros", ->
    input = inputBase: 7, outputBase: 10
    digits = [0, 6, 0]
    expected = [4, 2]
    expect(new AllYourBase(input).rebase(digits)).toEqual expected

  xit "input base is one", ->
    input = inputBase: 1, outputBase: 10
    expect ->
      new AllYourBase(input)
    .toThrow new Error "input base must be >= 2"

  xit "input base is zero", ->
    input = inputBase: 0, outputBase: 10
    expect ->
      new AllYourBase(input)
    .toThrow new Error "input base must be >= 2"

  xit "input base is negative", ->
    input = inputBase: -2, outputBase: 10
    expect ->
      new AllYourBase(input)
    .toThrow new Error "input base must be >= 2"

  xit "negative digit", ->
    input = inputBase: 2, outputBase: 10
    digits = [1, -1, 1, 0, 1, 0]
    expect ->
      new AllYourBase(input).rebase(digits)
    .toThrow new Error "all digits must satisfy 0 <= d < input base"

  xit "invalid positive digit", ->
    input = inputBase: 2, outputBase: 10
    digits = [1, 2, 1, 0, 1, 0]
    expect ->
      new AllYourBase(input).rebase(digits)
    .toThrow new Error "all digits must satisfy 0 <= d < input base"

  xit "output base is one", ->
    input = inputBase: 2, outputBase: 1
    expect ->
      new AllYourBase(input)
    .toThrow new Error "output base must be >= 2"

  xit "output base is zero", ->
    input = inputBase: 10, outputBase: 0
    expect ->
      new AllYourBase(input)
    .toThrow new Error "output base must be >= 2"

  xit "output base is negative", ->
    input = inputBase: 2, outputBase: -7
    expect ->
      new AllYourBase(input)
    .toThrow new Error "output base must be >= 2"

  xit "both bases are negative", ->
    input = inputBase: -2, outputBase: -7
    expect ->
      new AllYourBase(input)
    .toThrow new Error "input base must be >= 2"
