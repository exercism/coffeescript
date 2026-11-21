# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/trinary/canonical-data.json
# File last updated on 2026-11-04T23:50:35+00:00

Trinary = require './trinary'

describe "Trinary", ->
  it "trinary 1 is decimal 1", ->
    expect(new Trinary("1").toDecimal()).toEqual 1

  xit "trinary 2 is decimal 2", ->
    expect(new Trinary("2").toDecimal()).toEqual 2

  xit "trinary 10 is decimal 3", ->
    expect(new Trinary("10").toDecimal()).toEqual 3

  xit "trinary 11 is decimal 4", ->
    expect(new Trinary("11").toDecimal()).toEqual 4

  xit "trinary 100 is decimal 9", ->
    expect(new Trinary("100").toDecimal()).toEqual 9

  xit "trinary 112 is decimal 14", ->
    expect(new Trinary("112").toDecimal()).toEqual 14

  xit "trinary 222 is decimal 26", ->
    expect(new Trinary("222").toDecimal()).toEqual 26

  xit "trinary 1122000120 is decimal 32091", ->
    expect(new Trinary("1122000120").toDecimal()).toEqual 32091

  xit "invalid trinary digits returns 0", ->
    expect(new Trinary("1234").toDecimal()).toEqual 0

  xit "invalid word as input returns 0", ->
    expect(new Trinary("carrot").toDecimal()).toEqual 0

  xit "invalid numbers with letters as input returns 0", ->
    expect(new Trinary("0a1b2c").toDecimal()).toEqual 0
