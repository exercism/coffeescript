# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/collatz-conjecture/canonical-data.json
# File last updated on 2026-10-30T18:24:42+00:00

CollatzConjecture = require './collatz-conjecture'

describe "Collatz Conjecture", ->
  it "zero steps for one", ->
    expect(CollatzConjecture.steps 1).toEqual 0

  xit "divide if even", ->
    expect(CollatzConjecture.steps 16).toEqual 4

  xit "even and odd steps", ->
    expect(CollatzConjecture.steps 12).toEqual 9

  xit "large number of even and odd steps", ->
    expect(CollatzConjecture.steps 1000000).toEqual 152

  xit "zero is an error", ->
    expect(-> CollatzConjecture.steps 0).toThrow new Error "Only positive integers are allowed"

  xit "negative value is an error", ->
    expect(-> CollatzConjecture.steps -15).toThrow new Error "Only positive integers are allowed"
