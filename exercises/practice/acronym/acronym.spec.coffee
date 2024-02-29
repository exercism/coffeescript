Acronym = require './acronym'

describe "Acronym", ->
  it "basic", ->
      result = Acronym.abbreviate "Portable Network Graphics"
      expect(result).toEqual "PNG"

  xit "lowercase words", ->
      result = Acronym.abbreviate "Ruby on Rails"
      expect(result).toEqual "ROR"

  xit "punctuation", ->
      result = Acronym.abbreviate "First In, First Out"
      expect(result).toEqual "FIFO"

  xit "all caps word", ->
      result = Acronym.abbreviate "GNU Image Manipulation Program"
      expect(result).toEqual "GIMP"

  xit "punctuation without whitespace", ->
      result = Acronym.abbreviate "Complementary metal-oxide semiconductor"
      expect(result).toEqual "CMOS"

  xit "very long abbreviation", ->
      result = Acronym.abbreviate "Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me"
      expect(result).toEqual "ROTFLSHTMDCOALM"

  xit "consecutive delimiters", ->
      result = Acronym.abbreviate "Something - I made up from thin air"
      expect(result).toEqual "SIMUFTA"

  xit "apostrophes", ->
      result = Acronym.abbreviate "Halley's Comet"
      expect(result).toEqual "HC"

  xit "underscore emphasis", ->
      result = Acronym.abbreviate "The Road _Not_ Taken"
      expect(result).toEqual "TRNT"
