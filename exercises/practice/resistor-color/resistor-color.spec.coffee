# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/resistor-color/canonical-data.json
# File last updated on 2026-11-05T15:54:19+00:00

ResistorColor = require './resistor-color'

describe "Resistor Color", ->
  it "Black", ->
    expect(ResistorColor.colorCode "black").toEqual 0

  xit "White", ->
    expect(ResistorColor.colorCode "white").toEqual 9

  xit "Orange", ->
    expect(ResistorColor.colorCode "orange").toEqual 3

  xit "Colors", ->
    expect(ResistorColor.colors()).toEqual [
      "black"
      "brown"
      "red"
      "orange"
      "yellow"
      "green"
      "blue"
      "violet"
      "grey"
      "white"
    ]
