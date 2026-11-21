# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/rna-transcription/canonical-data.json
# File last updated on 2026-11-04T23:50:32+00:00

RNATranscription = require './rna-transcription'

describe "RNA Transcription", ->
  it "Empty RNA sequence", ->
    expect(RNATranscription.toRna "").toEqual ""

  xit "RNA complement of cytosine is guanine", ->
    expect(RNATranscription.toRna "C").toEqual "G"

  xit "RNA complement of guanine is cytosine", ->
    expect(RNATranscription.toRna "G").toEqual "C"

  xit "RNA complement of thymine is adenine", ->
    expect(RNATranscription.toRna "T").toEqual "A"

  xit "RNA complement of adenine is uracil", ->
    expect(RNATranscription.toRna "A").toEqual "U"

  xit "RNA complement", ->
    expect(RNATranscription.toRna "ACGTGGTCTTAA").toEqual "UGCACCAGAAUU"
