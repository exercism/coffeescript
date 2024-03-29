class Hamming
  @distance: (strand1, strand2) ->
    if strand1.length != strand2.length
      throw new Error "strands must be of equal length"
    
    strand1.split("")
            .filter (elem, i) -> elem != strand2[i]
            .length

module.exports = Hamming
