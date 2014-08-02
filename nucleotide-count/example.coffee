class DNA
  constructor: (@strand) ->
    @nucleotideCounts =
      A: @value 'A'
      T: @value 'T'
      C: @value 'C'
      G: @value 'G'

  value: (nucleotide) ->
    if nucleotide is 'U' then 0 else @strand.split(nucleotide).length - 1

  count: (nucleotide) ->
    throw new Error('Invalid Nucleotide') if nucleotide not of @nucleotideCounts
    @nucleotideCounts[nucleotide]

module.exports = DNA
