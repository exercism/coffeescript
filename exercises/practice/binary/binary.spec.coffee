# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/binary/canonical-data.json
# File last updated on 2026-11-05T15:33:47+00:00

Binary = require './binary'

describe "Binary", ->
  it "binary 0 is decimal 0", ->
    expect(new Binary("0").toDecimal()).toEqual 0

  xit "binary 1 is decimal 1", ->
    expect(new Binary("1").toDecimal()).toEqual 1

  xit "binary 10 is decimal 2", ->
    expect(new Binary("10").toDecimal()).toEqual 2

  xit "binary 11 is decimal 3", ->
    expect(new Binary("11").toDecimal()).toEqual 3

  xit "binary 100 is decimal 4", ->
    expect(new Binary("100").toDecimal()).toEqual 4

  xit "binary 1001 is decimal 9", ->
    expect(new Binary("1001").toDecimal()).toEqual 9

  xit "binary 11010 is decimal 26", ->
    expect(new Binary("11010").toDecimal()).toEqual 26

  xit "binary 10001101000 is decimal 1128", ->
    expect(new Binary("10001101000").toDecimal()).toEqual 1128

  xit "binary ignores leading zeros", ->
    expect(new Binary("000011111").toDecimal()).toEqual 31

  xit "2 is not a valid binary digit", ->
    expect(new Binary("2").toDecimal()).toEqual 0

  xit "a number containing a non-binary digit is invalid", ->
    expect(new Binary("01201").toDecimal()).toEqual 0

  xit "a number with trailing non-binary characters is invalid", ->
    expect(new Binary("10nope").toDecimal()).toEqual 0

  xit "a number with leading non-binary characters is invalid", ->
    expect(new Binary("nope10").toDecimal()).toEqual 0

  xit "a number with internal non-binary characters is invalid", ->
    expect(new Binary("10nope10").toDecimal()).toEqual 0

  xit "a number and a word whitespace separated is invalid", ->
    expect(new Binary("001 nope").toDecimal()).toEqual 0
