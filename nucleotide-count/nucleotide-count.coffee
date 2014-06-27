class DNA
  constructor: (@strand) ->
    @nucleotideCounts =
      A: @_count 'A'
      T: @_count 'T'
      C: @_count 'C'
      G: @_count 'G'

  count: (nucleotide) ->
    return 0 if nucleotide is 'U'
    throw new Error('Invalid Nucleotide') if nucleotide is 'X'

    @nucleotideCounts[nucleotide]

  _count: (nucleotide) ->
    @strand.split(nucleotide).length - 1

module.exports = DNA
