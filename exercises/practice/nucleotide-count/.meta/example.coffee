class DNA
  constructor: (@strand) ->
    @nucleotideCounts =
      A: @value 'A'
      T: @value 'T'
      C: @value 'C'
      G: @value 'G'

  value: (nucleotide) ->
    throw new Error('Invalid nucleotide strand') if (@strand.split("").some (n) -> not (['A', 'T', 'C', 'G'].includes(n)))
    @strand.split(nucleotide).length - 1

  count: (nucleotide) ->
    throw new Error('Invalid nucleotide') unless @nucleotideCounts.hasOwnProperty(nucleotide)
    @nucleotideCounts[nucleotide]

module.exports = DNA
