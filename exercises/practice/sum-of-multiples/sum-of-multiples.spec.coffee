# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/sum-of-multiples/canonical-data.json
# File last updated on 2026-11-04T23:50:34+00:00

SumofMultiples = require './sum-of-multiples'

describe "Sum of Multiples", ->
  it "no multiples within limit", ->
    expect(SumofMultiples.sum [3, 5], 1).toEqual 0

  xit "one factor has multiples within limit", ->
    expect(SumofMultiples.sum [3, 5], 4).toEqual 3

  xit "more than one multiple within limit", ->
    expect(SumofMultiples.sum [3], 7).toEqual 9

  xit "more than one factor with multiples within limit", ->
    expect(SumofMultiples.sum [3, 5], 10).toEqual 23

  xit "each multiple is only counted once", ->
    expect(SumofMultiples.sum [3, 5], 100).toEqual 2318

  xit "a much larger limit", ->
    expect(SumofMultiples.sum [3, 5], 1000).toEqual 233168

  xit "three factors", ->
    expect(SumofMultiples.sum [7, 13, 17], 20).toEqual 51

  xit "factors not relatively prime", ->
    expect(SumofMultiples.sum [4, 6], 15).toEqual 30

  xit "some pairs of factors relatively prime and some not", ->
    expect(SumofMultiples.sum [5, 6, 8], 150).toEqual 4419

  xit "one factor is a multiple of another", ->
    expect(SumofMultiples.sum [5, 25], 51).toEqual 275

  xit "much larger factors", ->
    expect(SumofMultiples.sum [43, 47], 10000).toEqual 2203160

  xit "all numbers are multiples of 1", ->
    expect(SumofMultiples.sum [1], 100).toEqual 4950

  xit "no factors means an empty sum", ->
    expect(SumofMultiples.sum [], 10000).toEqual 0

  xit "the only multiple of 0 is 0", ->
    expect(SumofMultiples.sum [0], 1).toEqual 0

  xit "the factor 0 does not affect the sum of multiples of other factors", ->
    expect(SumofMultiples.sum [3, 0], 4).toEqual 3

  xit "solutions using include-exclude must extend to cardinality greater than 3", ->
    expect(SumofMultiples.sum [2, 3, 5, 7, 11], 10000).toEqual 39614537
