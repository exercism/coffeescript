# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/resistor-color-trio/canonical-data.json
# File last updated on 2026-11-05T15:46:34+00:00

ResistorColorTrio = require './resistor-color-trio'

describe "Resistor Color Trio", ->
  it "Orange and orange and black", ->
    expect(ResistorColorTrio.label ["orange", "orange", "black"]).toEqual "33 ohms"

  xit "Blue and grey and brown", ->
    expect(ResistorColorTrio.label ["blue", "grey", "brown"]).toEqual "680 ohms"

  xit "Red and black and red", ->
    expect(ResistorColorTrio.label ["red", "black", "red"]).toEqual "2 kiloohms"

  xit "Green and brown and orange", ->
    expect(ResistorColorTrio.label ["green", "brown", "orange"]).toEqual "51 kiloohms"

  xit "Yellow and violet and yellow", ->
    expect(ResistorColorTrio.label ["yellow", "violet", "yellow"]).toEqual "470 kiloohms"

  xit "Blue and violet and blue", ->
    expect(ResistorColorTrio.label ["blue", "violet", "blue"]).toEqual "67 megaohms"

  xit "Minimum possible value", ->
    expect(ResistorColorTrio.label ["black", "black", "black"]).toEqual "0 ohms"

  xit "Maximum possible value", ->
    expect(ResistorColorTrio.label ["white", "white", "white"]).toEqual "99 gigaohms"

  xit "First two colors make an invalid octal number", ->
    expect(ResistorColorTrio.label ["black", "grey", "black"]).toEqual "8 ohms"

  xit "Ignore extra colors", ->
    expect(ResistorColorTrio.label ["blue", "green", "yellow", "orange"]).toEqual "650 kiloohms"
