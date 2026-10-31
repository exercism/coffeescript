# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/eliuds-eggs/canonical-data.json
# File last updated on 2026-10-30T22:11:43+00:00

EliudsEggs = require './eliuds-eggs'

describe "Eliud's Eggs", ->
  it "0 eggs", ->
    expect(EliudsEggs.eggCount 0).toEqual 0

  xit "1 egg", ->
    expect(EliudsEggs.eggCount 16).toEqual 1

  xit "4 eggs", ->
    expect(EliudsEggs.eggCount 89).toEqual 4

  xit "13 eggs", ->
    expect(EliudsEggs.eggCount 2000000000).toEqual 13
