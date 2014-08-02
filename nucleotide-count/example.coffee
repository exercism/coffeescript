class DNA
  constructor: (@strand) ->
    @nucleotideCounts =
      A: @_count 'A'
      T: @_count 'T'
      C: @_count 'C'
      G: @_count 'G'

  count: (nucleotide) ->
    nucleotideTypes = Object.keys(@nucleotideCounts)
    if nucleotideTypes.indexOf(nucleotide) is -1
      throw new Error('Invalid Nucleotide')
    @nucleotideCounts[nucleotide]

  _count: (nucleotide) ->
    if nucleotide is 'U' then 0 else @strand.split(nucleotide).length - 1

module.exports = DNA
