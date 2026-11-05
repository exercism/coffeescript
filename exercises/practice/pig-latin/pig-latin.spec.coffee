# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/pig-latin/canonical-data.json
# File last updated on 2026-11-05T19:44:13+00:00

PigLatin = require './pig-latin'

describe "Pig Latin", ->
  describe "ay is added to words that start with vowels", ->
    it "word beginning with a", ->
      expect(PigLatin.translate "apple").toEqual "appleay"

    xit "word beginning with e", ->
      expect(PigLatin.translate "ear").toEqual "earay"

    xit "word beginning with i", ->
      expect(PigLatin.translate "igloo").toEqual "iglooay"

    xit "word beginning with o", ->
      expect(PigLatin.translate "object").toEqual "objectay"

    xit "word beginning with u", ->
      expect(PigLatin.translate "under").toEqual "underay"

    xit "word beginning with a vowel and followed by a qu", ->
      expect(PigLatin.translate "equal").toEqual "equalay"

  describe "first letter and ay are moved to the end of words that start with consonants", ->
    xit "word beginning with p", ->
      expect(PigLatin.translate "pig").toEqual "igpay"

    xit "word beginning with k", ->
      expect(PigLatin.translate "koala").toEqual "oalakay"

    xit "word beginning with x", ->
      expect(PigLatin.translate "xenon").toEqual "enonxay"

    xit "word beginning with q without a following u", ->
      expect(PigLatin.translate "qat").toEqual "atqay"

    xit "word beginning with consonant and vowel containing qu", ->
      expect(PigLatin.translate "liquid").toEqual "iquidlay"

  describe "some letter clusters are treated like a single consonant", ->
    xit "word beginning with ch", ->
      expect(PigLatin.translate "chair").toEqual "airchay"

    xit "word beginning with qu", ->
      expect(PigLatin.translate "queen").toEqual "eenquay"

    xit "word beginning with qu and a preceding consonant", ->
      expect(PigLatin.translate "square").toEqual "aresquay"

    xit "word beginning with th", ->
      expect(PigLatin.translate "therapy").toEqual "erapythay"

    xit "word beginning with thr", ->
      expect(PigLatin.translate "thrush").toEqual "ushthray"

    xit "word beginning with sch", ->
      expect(PigLatin.translate "school").toEqual "oolschay"

  describe "some letter clusters are treated like a single vowel", ->
    xit "word beginning with yt", ->
      expect(PigLatin.translate "yttria").toEqual "yttriaay"

    xit "word beginning with xr", ->
      expect(PigLatin.translate "xray").toEqual "xrayay"

  describe "position of y in a word determines if it is a consonant or a vowel", ->
    xit "y is treated like a consonant at the beginning of a word", ->
      expect(PigLatin.translate "yellow").toEqual "ellowyay"

    xit "y is treated like a vowel at the end of a consonant cluster", ->
      expect(PigLatin.translate "rhythm").toEqual "ythmrhay"

    xit "y as second letter in two letter word", ->
      expect(PigLatin.translate "my").toEqual "ymay"

  describe "phrases are translated", ->
    xit "a whole phrase", ->
      expect(PigLatin.translate "why do squids enjoy xrays").toEqual "ywhay oday idssquay enjoyay xraysay"
