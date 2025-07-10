allYourBase = require './all-your-base'

describe "AllYourBase", ->
  it "single bit one to decimal", ->
    actual = allYourBase {
      inputBase: 2,
      outputBase: 10,
      digits: [1]
    }
    expected = [1]
    expect(actual).toEqual expected

  xit "binary to single decimal", ->
    actual = allYourBase {
      inputBase: 2,
      outputBase: 10,
      digits: [1, 0, 1]
    }
    expected = [5]
    expect(actual).toEqual expected

  xit "single decimal to binary", ->
    actual = allYourBase {
      inputBase: 10,
      outputBase: 2,
      digits: [5]
    }
    expected = [1, 0, 1]
    expect(actual).toEqual expected

  xit "binary to multiple decimal", ->
    actual = allYourBase {
      inputBase: 2,
      outputBase: 10,
      digits: [1, 0, 1, 0, 1, 0]
    }
    expected = [4, 2]
    expect(actual).toEqual expected

  xit "decimal to binary", ->
    actual = allYourBase {
      inputBase: 10,
      outputBase: 2,
      digits: [4, 2]
    }
    expected = [1, 0, 1, 0, 1, 0]
    expect(actual).toEqual expected

  xit "trinary to hexadecimal", ->
    actual = allYourBase {
      inputBase: 3,
      outputBase: 16,
      digits: [1, 1, 2, 0]
    }
    expected = [2, 10]
    expect(actual).toEqual expected

  xit "hexadecimal to trinary", ->
    actual = allYourBase {
      inputBase: 16,
      outputBase: 3,
      digits: [2, 10]
    }
    expected = [1, 1, 2, 0]
    expect(actual).toEqual expected

  xit "15-bit integer", ->
    actual = allYourBase {
      inputBase: 97,
      outputBase: 73,
      digits: [3, 46, 60]
    }
    expected = [6, 10, 45]
    expect(actual).toEqual expected

  xit "empty list", ->
    actual = allYourBase {
      inputBase: 2,
      outputBase: 10,
      digits: []
    }
    expected = [0]
    expect(actual).toEqual expected

  xit "single zero", ->
    actual = allYourBase {
      inputBase: 10,
      outputBase: 2,
      digits: [0]
    }
    expected = [0]
    expect(actual).toEqual expected

  xit "multiple zeros", ->
    actual = allYourBase {
      inputBase: 10,
      outputBase: 2,
      digits: [0, 0, 0]
    }
    expected = [0]
    expect(actual).toEqual expected

  xit "leading zeros", ->
    actual = allYourBase {
      inputBase: 7,
      outputBase: 10,
      digits: [0, 6, 0]
    }
    expected = [4, 2]
    expect(actual).toEqual expected

  xit "input base is one", ->
    expect ->
      allYourBase {
        inputBase: 1,
        outputBase: 10,
        digits: [0]
      }
    .toThrow new Error "input base must be >= 2"

  xit "input base is zero", ->
    expect ->
      allYourBase {
        inputBase: 0,
        outputBase: 10,
        digits: []
      }
    .toThrow new Error "input base must be >= 2"

  xit "input base is negative", ->
    expect ->
      allYourBase {
        inputBase: -2,
        outputBase: 10,
        digits: [0]
      }
    .toThrow new Error "input base must be >= 2"

  xit "negative digit", ->
    expect ->
      allYourBase {
        inputBase: 2,
        outputBase: 10,
        digits: [1, -1, 1, 0, 1, 0]
      }
    .toThrow new Error "all digits must satisfy 0 <= d < input base"

  xit "invalid positive digit", ->
    expect ->
      allYourBase {
        inputBase: 2,
        outputBase: 10,
        digits: [1, 2, 1, 0, 1, 0]
      }
    .toThrow new Error "all digits must satisfy 0 <= d < input base"

  xit "output base is one", ->
    expect ->
      allYourBase {
        inputBase: 2,
        outputBase: 1,
        digits: [1, 0, 1, 0, 1, 0]
      }
    .toThrow new Error "output base must be >= 2"

  xit "output base is zero", ->
    expect ->
      allYourBase {
        inputBase: 10,
        outputBase: 0,
        digits: [7]
      }
    .toThrow new Error "output base must be >= 2"

  xit "output base is negative", ->
    expect ->
      allYourBase {
        inputBase: 2,
        outputBase: -7,
        digits: [1]
      }
    .toThrow new Error "output base must be >= 2"

  xit "both bases are negative", ->
    expect ->
      allYourBase {
        inputBase: -2,
        outputBase: -7,
        digits: [1]
      }
    .toThrow new Error "input base must be >= 2"
