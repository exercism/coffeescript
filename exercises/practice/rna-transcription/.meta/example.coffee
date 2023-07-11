class RnaTrascription
  constructor: (@dna) ->
  
  toRna: -> 
    @dna.replace /./g, (nucleotide) ->
      switch nucleotide
        when 'C' then 'G'
        when 'G' then 'C'
        when 'T' then 'A'
        when 'A' then 'U'
        else throw new Error "Invalid input DNA."

module.exports = RnaTrascription
