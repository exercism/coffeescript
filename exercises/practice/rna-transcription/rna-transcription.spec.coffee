# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/rna-transcription/canonical-data.json
# File last updated on 2026-11-23T01:25:07+00:00

RNATranscription = require './rna-transcription'

describe "RNA Transcription", ->
  it "Empty RNA sequence", ->
    strand = new RNATranscription ""
    expect(strand.toRna()).toEqual ""

  xit "RNA complement of cytosine is guanine", ->
    strand = new RNATranscription "C"
    expect(strand.toRna()).toEqual "G"

  xit "RNA complement of guanine is cytosine", ->
    strand = new RNATranscription "G"
    expect(strand.toRna()).toEqual "C"

  xit "RNA complement of thymine is adenine", ->
    strand = new RNATranscription "T"
    expect(strand.toRna()).toEqual "A"

  xit "RNA complement of adenine is uracil", ->
    strand = new RNATranscription "A"
    expect(strand.toRna()).toEqual "U"

  xit "RNA complement", ->
    strand = new RNATranscription "ACGTGGTCTTAA"
    expect(strand.toRna()).toEqual "UGCACCAGAAUU"
