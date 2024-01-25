class ProteinTranslation
  mappings =
    'AUG': 'Methionine'
    'UUU': 'Phenylalanine'
    'UUC': 'Phenylalanine'
    'UUA': 'Leucine'
    'UUG': 'Leucine'
    'UCU': 'Serine'
    'UCC': 'Serine'
    'UCA': 'Serine'
    'UCG': 'Serine'
    'UAU': 'Tyrosine'
    'UAC': 'Tyrosine'
    'UGU': 'Cysteine'
    'UGC': 'Cysteine'
    'UGG': 'Tryptophan'
    'UAA': 'STOP'
    'UAG': 'STOP'
    'UGA': 'STOP'

  @proteins: (strand) ->
    splitIntoCodons = (str) ->
        codons = []
        while str.length > 0
            codons.push str.slice 0, 3
            str = str.slice 3
        codons

    results = []
    codons = splitIntoCodons strand
    for codon in codons
      if not (codon of mappings)
        throw 'Invalid codon'
      protein = mappings[codon]
      if protein == 'STOP'
          return results
      results.push protein
    results

module.exports = ProteinTranslation
