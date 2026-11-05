# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/hamming/canonical-data.json
# File last updated on 2026-11-01T03:29:44+00:00

Hamming = require './hamming'

describe "Hamming", ->
  it "empty strands", ->
    expect(Hamming.distance "", "").toEqual 0

  xit "single letter identical strands", ->
    expect(Hamming.distance "A", "A").toEqual 0

  xit "single letter different strands", ->
    expect(Hamming.distance "G", "T").toEqual 1

  xit "long identical strands", ->
    expect(Hamming.distance "GGACTGAAATCTG", "GGACTGAAATCTG").toEqual 0

  xit "long different strands", ->
    expect(Hamming.distance "GGACGGATTCTG", "AGGACGGATTCT").toEqual 9

  xit "disallow first strand longer", ->
    expect(-> Hamming.distance "AATG", "AAA").toThrow new Error "strands must be of equal length"

  xit "disallow second strand longer", ->
    expect(-> Hamming.distance "ATA", "AGTG").toThrow new Error "strands must be of equal length"

  xit "disallow empty first strand", ->
    expect(-> Hamming.distance "", "G").toThrow new Error "strands must be of equal length"

  xit "disallow empty second strand", ->
    expect(-> Hamming.distance "G", "").toThrow new Error "strands must be of equal length"
