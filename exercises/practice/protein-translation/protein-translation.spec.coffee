ProteinTranslation = require './protein-translation'

describe 'ProteinTranslation', ->
  it 'Empty RNA sequence results in no proteins', ->
    results = ProteinTranslation.proteins("")
    expected = []
    expect(results).toEqual expected

  xit 'Methionine RNA sequence', ->
    results = ProteinTranslation.proteins("AUG")
    expected = ["Methionine"]
    expect(results).toEqual expected

  xit 'Phenylalanine RNA sequence 1', ->
    results = ProteinTranslation.proteins("UUU")
    expected = ["Phenylalanine"]
    expect(results).toEqual expected

  xit 'Phenylalanine RNA sequence 2', ->
    results = ProteinTranslation.proteins("UUC")
    expected = ["Phenylalanine"]
    expect(results).toEqual expected

  xit 'Leucine RNA sequence 1', ->
    results = ProteinTranslation.proteins("UUA")
    expected = ["Leucine"]
    expect(results).toEqual expected

  xit 'Leucine RNA sequence 2', ->
    results = ProteinTranslation.proteins("UUG")
    expected = ["Leucine"]
    expect(results).toEqual expected

  xit 'Serine RNA sequence 1', ->
    results = ProteinTranslation.proteins("UCU")
    expected = ["Serine"]
    expect(results).toEqual expected

  xit 'Serine RNA sequence 2', ->
    results = ProteinTranslation.proteins("UCC")
    expected = ["Serine"]
    expect(results).toEqual expected

  xit 'Serine RNA sequence 3', ->
    results = ProteinTranslation.proteins("UCA")
    expected = ["Serine"]
    expect(results).toEqual expected

  xit 'Serine RNA sequence 4', ->
    results = ProteinTranslation.proteins("UCG")
    expected = ["Serine"]
    expect(results).toEqual expected

  xit 'Tyrosine RNA sequence 1', ->
    results = ProteinTranslation.proteins("UAU")
    expected = ["Tyrosine"]
    expect(results).toEqual expected

  xit 'Tyrosine RNA sequence 2', ->
    results = ProteinTranslation.proteins("UAC")
    expected = ["Tyrosine"]
    expect(results).toEqual expected

  xit 'Cysteine RNA sequence 1', ->
    results = ProteinTranslation.proteins("UGU")
    expected = ["Cysteine"]
    expect(results).toEqual expected

  xit 'Cysteine RNA sequence 2', ->
    results = ProteinTranslation.proteins("UGC")
    expected = ["Cysteine"]
    expect(results).toEqual expected

  xit 'Tryptophan RNA sequence', ->
    results = ProteinTranslation.proteins("UGG")
    expected = ["Tryptophan"]
    expect(results).toEqual expected

  xit 'STOP codon RNA sequence 1', ->
    results = ProteinTranslation.proteins("UAA")
    expected = []
    expect(results).toEqual expected

  xit 'STOP codon RNA sequence 2', ->
    results = ProteinTranslation.proteins("UAG")
    expected = []
    expect(results).toEqual expected

  xit 'STOP codon RNA sequence 3', ->
    results = ProteinTranslation.proteins("UGA")
    expected = []
    expect(results).toEqual expected

  xit 'Sequence of two protein codons translates into protein', ->
    results = ProteinTranslation.proteins("UUUUUU")
    expected = ["Phenylalanine", "Phenylalanine"]
    expect(results).toEqual expected

  xit 'Sequence of two different protein codons translates into proteins', ->
    results = ProteinTranslation.proteins("UUAUUG")
    expected = ["Leucine", "Leucine"]
    expect(results).toEqual expected

  xit 'Translate RNA strand into correct protein list', ->
    results = ProteinTranslation.proteins("AUGUUUUGG")
    expected = ["Methionine", "Phenylalanine", "Tryptophan"]
    expect(results).toEqual expected

  xit 'Translation stops if STOP codon at beginning of sequence', ->
    results = ProteinTranslation.proteins("UAGUGG")
    expected = []
    expect(results).toEqual expected

  xit 'Translation stops if STOP codon at end of two-codon sequence', ->
    results = ProteinTranslation.proteins("UGGUAG")
    expected = ["Tryptophan"]
    expect(results).toEqual expected

  xit 'Translation stops if STOP codon at end of three-codon sequence', ->
    results = ProteinTranslation.proteins("AUGUUUUAA")
    expected = ["Methionine", "Phenylalanine"]
    expect(results).toEqual expected

  xit 'Translation stops if STOP codon in middle of three-codon sequence', ->
    results = ProteinTranslation.proteins("UGGUAGUGG")
    expected = ["Tryptophan"]
    expect(results).toEqual expected

  xit 'Translation stops if STOP codon in middle of six-codon sequence', ->
    results = ProteinTranslation.proteins("UGGUGUUAUUAAUGGUUU")
    expected = ["Tryptophan", "Cysteine", "Tyrosine"]
    expect(results).toEqual expected

  xit 'Sequence of two non-STOP codons does not translate to a STOP codon', ->
    results = ProteinTranslation.proteins("AUGAUG")
    expected = ["Methionine", "Methionine"]
    expect(results).toEqual expected

  xit "Non-existing codon can't translate", ->
    expect ->
      ProteinTranslation.proteins("AAA")
    .toThrow new Error("Invalid codon")
