RnaTrascription = require './rna-transcription'

describe 'RnaTrascription', ->
  it 'Empty RNA sequence', ->
    dna = new RnaTrascription ""
    expect(dna.toRna()).toEqual("")

  xit 'RNA complement of cytosine is guanine', ->
    dna = new RnaTrascription "C"
    expect(dna.toRna()).toEqual("G")

  xit 'RNA complement of guanine is cytosine', ->
    dna = new RnaTrascription "G"
    expect(dna.toRna()).toEqual("C")

  xit 'RNA complement of thymine is adenine', ->
    dna = new RnaTrascription "T"
    expect(dna.toRna()).toEqual("A")

  xit 'RNA complement of adenine is uracil', ->
    dna = new RnaTrascription "A"
    expect(dna.toRna()).toEqual("U")

  xit 'RNA complement', ->
    dna = new RnaTrascription "ACGTGGTCTTAA"
    expect(dna.toRna()).toEqual("UGCACCAGAAUU")
  

  