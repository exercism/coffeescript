RnaTranscription = require './rna-transcription'

describe 'RnaTranscription', ->
  it 'Empty RNA sequence', ->
    dna = new RnaTranscription ""
    expect(dna.toRna()).toEqual("")

  xit 'RNA complement of cytosine is guanine', ->
    dna = new RnaTranscription "C"
    expect(dna.toRna()).toEqual("G")

  xit 'RNA complement of guanine is cytosine', ->
    dna = new RnaTranscription "G"
    expect(dna.toRna()).toEqual("C")

  xit 'RNA complement of thymine is adenine', ->
    dna = new RnaTranscription "T"
    expect(dna.toRna()).toEqual("A")

  xit 'RNA complement of adenine is uracil', ->
    dna = new RnaTranscription "A"
    expect(dna.toRna()).toEqual("U")

  xit 'RNA complement', ->
    dna = new RnaTranscription "ACGTGGTCTTAA"
    expect(dna.toRna()).toEqual("UGCACCAGAAUU")
