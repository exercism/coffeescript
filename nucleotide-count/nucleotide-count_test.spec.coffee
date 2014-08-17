DNA = require './example'

describe 'DNA', ->
  it 'has no nucleotides', ->
    expected =
      A: 0
      T: 0
      C: 0
      G: 0
    dna = new DNA('')
    expect(dna.nucleotideCounts).toEqual expected

  xit 'has no adoenosine', ->
    dna = new DNA('')
    expect(dna.count('A')).toEqual 0

  xit 'repetitive cytidine gets counts', ->
    dna = new DNA('CCCCC')
    expect(dna.count('C')).toEqual 5

  xit 'repetitive sequence has only gaunosine', ->
    dna = new DNA('GGGGGGGG')
    expected =
      A: 0
      T: 0
      C: 0
      G: 8
    expect(dna.nucleotideCounts).toEqual expected

  xit 'counts only thymidine', ->
    dna = new DNA('GGGGTAACCCGG')
    expect(dna.count('T')).toEqual 1

  xit 'counts a nucleotide only once', ->
    dna = new DNA('GGTTGG')
    dna.count('T')
    expect(dna.count('T')).toEqual 2

  xit 'validates nucleotides', ->
    dna = new DNA('GGTTGG')
    expect ->
      dna.count 'X'
    .toThrow new Error('Invalid Nucleotide')

  xit 'counts all nucleotides', ->
    dna = new DNA('AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC')
    expected =
      A: 20
      T: 21
      G: 17
      C: 12
    expect(dna.nucleotideCounts).toEqual expected
