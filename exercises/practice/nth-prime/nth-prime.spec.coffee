# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/nth-prime/canonical-data.json
# File last updated on 2026-11-05T02:15:42+00:00

NthPrime = require './nth-prime'

describe "Nth Prime", ->
  it "first prime", ->
    expect(NthPrime.nth 1).toEqual 2

  xit "second prime", ->
    expect(NthPrime.nth 2).toEqual 3

  xit "sixth prime", ->
    expect(NthPrime.nth 6).toEqual 13

  xit "big prime", ->
    expect(NthPrime.nth 10001).toEqual 104743

  xit "there is no zeroth prime", ->
    expect(-> NthPrime.nth 0).toThrow "there is no zeroth prime"
