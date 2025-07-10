PigLatin = require './pig-latin'

describe 'Pig Latin', ->
  describe 'ay is added to words that start with vowels', ->
    it 'word beginning with a', ->
      results = PigLatin.translate "apple"
      expected = "appleay"
      expect(results).toEqual expected

    xit 'word beginning with e', ->
      results = PigLatin.translate "ear"
      expected = "earay"
      expect(results).toEqual expected

    xit 'word beginning with i', ->
      results = PigLatin.translate "igloo"
      expected = "iglooay"
      expect(results).toEqual expected

    xit 'word beginning with o', ->
      results = PigLatin.translate "object"
      expected = "objectay"
      expect(results).toEqual expected

    xit 'word beginning with u', ->
      results = PigLatin.translate "under"
      expected = "underay"
      expect(results).toEqual expected

    xit 'word beginning with a vowel and followed by a qu', ->
      results = PigLatin.translate "equal"
      expected = "equalay"
      expect(results).toEqual expected

  describe 'first letter and ay are moved to the end of words that start with consonants', ->
    xit 'word beginning with p', ->
      results = PigLatin.translate "pig"
      expected = "igpay"
      expect(results).toEqual expected

    xit 'word beginning with k', ->
      results = PigLatin.translate "koala"
      expected = "oalakay"
      expect(results).toEqual expected

    xit 'word beginning with x', ->
      results = PigLatin.translate "xenon"
      expected = "enonxay"
      expect(results).toEqual expected

    xit 'word beginning with q without a following u', ->
      results = PigLatin.translate "qat"
      expected = "atqay"
      expect(results).toEqual expected

    xit 'word beginning with consonant and vowel containing qu', ->
      results = PigLatin.translate "liquid"
      expected = "iquidlay"
      expect(results).toEqual expected

  describe 'some letter clusters are treated as a single consonant', ->
    xit 'word beginning with ch', ->
      results = PigLatin.translate "chair"
      expected = "airchay"
      expect(results).toEqual expected

    xit 'word beginning with qu', ->
      results = PigLatin.translate "queen"
      expected = "eenquay"
      expect(results).toEqual expected

    xit 'word beginning with qu and a preceding consonant', ->
      results = PigLatin.translate "square"
      expected = "aresquay"
      expect(results).toEqual expected

    xit 'word beginning with th', ->
      results = PigLatin.translate "therapy"
      expected = "erapythay"
      expect(results).toEqual expected

    xit 'word beginning with thr', ->
      results = PigLatin.translate "thrush"
      expected = "ushthray"
      expect(results).toEqual expected

    xit 'word beginning with sch', ->
      results = PigLatin.translate "school"
      expected = "oolschay"
      expect(results).toEqual expected

  describe 'some letter clusters are treated like a single vowel', ->
    xit 'word beginning with yt', ->
      results = PigLatin.translate "yttria"
      expected = "yttriaay"
      expect(results).toEqual expected

    xit 'word beginning with xr', ->
      results = PigLatin.translate "xray"
      expected = "xrayay"
      expect(results).toEqual expected

describe 'position of y in a word determines if xit is a consonant or a vowel', ->   
    xit 'y is treated like a consonant at the beginning of a word', ->
      results = PigLatin.translate "yellow"
      expected = "ellowyay"
      expect(results).toEqual expected

    xit 'y is treated like a vowel at the end of a consonant cluster', ->
      results = PigLatin.translate "rhythm"
      expected = "ythmrhay"
      expect(results).toEqual expected

    xit 'y as second letter in two letter word', ->
      results = PigLatin.translate "my"
      expected = "ymay"
      expect(results).toEqual expected

  describe 'phrases are translated', ->
    xit 'a whole phrase', ->
      results = PigLatin.translate "quick fast run"
      expected = "ickquay astfay unray"
      expect(results).toEqual expected