# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/acronym/canonical-data.json
# File last updated on 2026-10-29T04:39:31+00:00

Acronym = require './acronym'

describe "Acronym", ->
  it "basic", ->
    phrase = "Portable Network Graphics"
    expect(Acronym.abbreviate phrase).toEqual "PNG"

  xit "lowercase words", ->
    phrase = "Ruby on Rails"
    expect(Acronym.abbreviate phrase).toEqual "ROR"

  xit "punctuation", ->
    phrase = "First In, First Out"
    expect(Acronym.abbreviate phrase).toEqual "FIFO"

  xit "all caps word", ->
    phrase = "GNU Image Manipulation Program"
    expect(Acronym.abbreviate phrase).toEqual "GIMP"

  xit "punctuation without whitespace", ->
    phrase = "Complementary metal-oxide semiconductor"
    expect(Acronym.abbreviate phrase).toEqual "CMOS"

  xit "very long abbreviation", ->
    phrase = "Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me"
    expect(Acronym.abbreviate phrase).toEqual "ROTFLSHTMDCOALM"

  xit "consecutive delimiters", ->
    phrase = "Something - I made up from thin air"
    expect(Acronym.abbreviate phrase).toEqual "SIMUFTA"

  xit "apostrophes", ->
    phrase = "Halley's Comet"
    expect(Acronym.abbreviate phrase).toEqual "HC"

  xit "underscore emphasis", ->
    phrase = "The Road _Not_ Taken"
    expect(Acronym.abbreviate phrase).toEqual "TRNT"
