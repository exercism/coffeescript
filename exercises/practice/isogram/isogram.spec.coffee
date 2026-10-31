# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/isogram/canonical-data.json
# File last updated on 2026-10-30T23:09:28+00:00

Isogram = require './isogram'

describe "Isogram", ->
  it "empty string", ->
    expect(Isogram.isIsogram "").toEqual true

  xit "isogram with only lower case characters", ->
    expect(Isogram.isIsogram "isogram").toEqual true

  xit "word with one duplicated character", ->
    expect(Isogram.isIsogram "eleven").toEqual false

  xit "word with one duplicated character from the end of the alphabet", ->
    expect(Isogram.isIsogram "zzyzx").toEqual false

  xit "longest reported english isogram", ->
    expect(Isogram.isIsogram "subdermatoglyphic").toEqual true

  xit "word with duplicated character in mixed case", ->
    expect(Isogram.isIsogram "Alphabet").toEqual false

  xit "word with duplicated character in mixed case, lowercase first", ->
    expect(Isogram.isIsogram "alphAbet").toEqual false

  xit "hypothetical isogrammic word with hyphen", ->
    expect(Isogram.isIsogram "thumbscrew-japingly").toEqual true

  xit "hypothetical word with duplicated character following hyphen", ->
    expect(Isogram.isIsogram "thumbscrew-jappingly").toEqual false

  xit "isogram with duplicated hyphen", ->
    expect(Isogram.isIsogram "six-year-old").toEqual true

  xit "made-up name that is an isogram", ->
    expect(Isogram.isIsogram "Emily Jung Schwartzkopf").toEqual true

  xit "duplicated character in the middle", ->
    expect(Isogram.isIsogram "accentor").toEqual false

  xit "same first and last characters", ->
    expect(Isogram.isIsogram "angola").toEqual false

  xit "word with duplicated character and with two hyphens", ->
    expect(Isogram.isIsogram "up-to-date").toEqual false
