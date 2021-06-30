NucleotideCount = require './nucleotide-count'

describe 'NucleotideCount', ->
  it 'has no nucleotides', ->
    expected =
      A: 0
      T: 0
      C: 0
      G: 0
    dna = new NucleotideCount('')
    expect(dna.nucleotideCounts).toEqual expected

  xit 'has no adoenosine', ->
    dna = new NucleotideCount('')
    expect(dna.count('A')).toEqual 0

  xit 'repetitive cytidine gets counts', ->
    dna = new NucleotideCount('CCCCC')
    expect(dna.count('C')).toEqual 5

  xit 'repetitive sequence has only gaunosine', ->
    dna = new NucleotideCount('GGGGGGGG')
    expected =
      A: 0
      T: 0
      C: 0
      G: 8
    expect(dna.nucleotideCounts).toEqual expected

  xit 'counts only thymidine', ->
    dna = new NucleotideCount('GGGGTAACCCGG')
    expect(dna.count('T')).toEqual 1

  xit 'counts a nucleotide only once', ->
    dna = new NucleotideCount('GGTTGG')
    dna.count('T')
    expect(dna.count('T')).toEqual 2

  xit 'validates strand', ->
    dna = new NucleotideCount('AGTXCG')
    expect ->
      dna.count 'G'
    .toThrow new Error('Invalid nucleotide strand')

  xit 'validates nucleotides', ->
    dna = new NucleotideCount('GGTTGG')
    expect ->
      dna.count 'X'
    .toThrow new Error('Invalid nucleotide')

  xit 'counts all nucleotides', ->
    dna = new NucleotideCount('AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC')
    expected =
      A: 20
      T: 21
      G: 17
      C: 12
    expect(dna.nucleotideCounts).toEqual expected
