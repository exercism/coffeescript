# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/roman-numerals/canonical-data.json
# File last updated on 2026-11-04T23:49:15+00:00

RomanNumerals = require './roman-numerals'

describe "Roman Numerals", ->
  it "1 is I", ->
    expect(RomanNumerals.convert 1).toEqual "I"

  xit "2 is II", ->
    expect(RomanNumerals.convert 2).toEqual "II"

  xit "3 is III", ->
    expect(RomanNumerals.convert 3).toEqual "III"

  xit "4 is IV", ->
    expect(RomanNumerals.convert 4).toEqual "IV"

  xit "5 is V", ->
    expect(RomanNumerals.convert 5).toEqual "V"

  xit "6 is VI", ->
    expect(RomanNumerals.convert 6).toEqual "VI"

  xit "9 is IX", ->
    expect(RomanNumerals.convert 9).toEqual "IX"

  xit "16 is XVI", ->
    expect(RomanNumerals.convert 16).toEqual "XVI"

  xit "27 is XXVII", ->
    expect(RomanNumerals.convert 27).toEqual "XXVII"

  xit "48 is XLVIII", ->
    expect(RomanNumerals.convert 48).toEqual "XLVIII"

  xit "49 is XLIX", ->
    expect(RomanNumerals.convert 49).toEqual "XLIX"

  xit "59 is LIX", ->
    expect(RomanNumerals.convert 59).toEqual "LIX"

  xit "66 is LXVI", ->
    expect(RomanNumerals.convert 66).toEqual "LXVI"

  xit "93 is XCIII", ->
    expect(RomanNumerals.convert 93).toEqual "XCIII"

  xit "141 is CXLI", ->
    expect(RomanNumerals.convert 141).toEqual "CXLI"

  xit "163 is CLXIII", ->
    expect(RomanNumerals.convert 163).toEqual "CLXIII"

  xit "166 is CLXVI", ->
    expect(RomanNumerals.convert 166).toEqual "CLXVI"

  xit "402 is CDII", ->
    expect(RomanNumerals.convert 402).toEqual "CDII"

  xit "575 is DLXXV", ->
    expect(RomanNumerals.convert 575).toEqual "DLXXV"

  xit "666 is DCLXVI", ->
    expect(RomanNumerals.convert 666).toEqual "DCLXVI"

  xit "911 is CMXI", ->
    expect(RomanNumerals.convert 911).toEqual "CMXI"

  xit "1024 is MXXIV", ->
    expect(RomanNumerals.convert 1024).toEqual "MXXIV"

  xit "1666 is MDCLXVI", ->
    expect(RomanNumerals.convert 1666).toEqual "MDCLXVI"

  xit "3000 is MMM", ->
    expect(RomanNumerals.convert 3000).toEqual "MMM"

  xit "3001 is MMMI", ->
    expect(RomanNumerals.convert 3001).toEqual "MMMI"

  xit "3888 is MMMDCCCLXXXVIII", ->
    expect(RomanNumerals.convert 3888).toEqual "MMMDCCCLXXXVIII"

  xit "3999 is MMMCMXCIX", ->
    expect(RomanNumerals.convert 3999).toEqual "MMMCMXCIX"
