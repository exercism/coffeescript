# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/strain/canonical-data.json
# File last updated on 2026-11-09T05:53:43+00:00

Strain = require './strain'

describe "Strain", ->
  it "keep on empty list returns empty list", ->
    data = []
    result = Strain.keep data, (x) -> true
    expected = []
    expect(result).toEqual expected

  xit "keeps everything", ->
    data = [1, 3, 5]
    result = Strain.keep data, (x) -> true
    expected = [1, 3, 5]
    expect(result).toEqual expected

  xit "keeps nothing", ->
    data = [1, 3, 5]
    result = Strain.keep data, (x) -> false
    expected = []
    expect(result).toEqual expected

  xit "keeps first and last", ->
    data = [1, 2, 3]
    result = Strain.keep data, (x) -> x % 2 == 1
    expected = [1, 3]
    expect(result).toEqual expected

  xit "keeps neither first nor last", ->
    data = [1, 2, 3]
    result = Strain.keep data, (x) -> x % 2 == 0
    expected = [2]
    expect(result).toEqual expected

  xit "keeps strings", ->
    data = ["apple", "zebra", "banana", "zombies", "cherimoya", "zealot"]
    result = Strain.keep data, (value) -> value[0] == "z"
    expected = ["zebra", "zombies", "zealot"]
    expect(result).toEqual expected

  xit "keeps lists", ->
    data = [[1, 2, 3], [5, 5, 5], [5, 1, 2], [2, 1, 2], [1, 5, 2], [2, 2, 1], [1, 2, 5]]
    result = Strain.keep data, (value) -> 5 in value
    expected = [[5, 5, 5], [5, 1, 2], [1, 5, 2], [1, 2, 5]]
    expect(result).toEqual expected

  xit "discard on empty list returns empty list", ->
    data = []
    result = Strain.discard data, (x) -> true
    expected = []
    expect(result).toEqual expected

  xit "discards everything", ->
    data = [1, 3, 5]
    result = Strain.discard data, (x) -> true
    expected = []
    expect(result).toEqual expected

  xit "discards nothing", ->
    data = [1, 3, 5]
    result = Strain.discard data, (x) -> false
    expected = [1, 3, 5]
    expect(result).toEqual expected

  xit "discards first and last", ->
    data = [1, 2, 3]
    result = Strain.discard data, (x) -> x % 2 == 1
    expected = [2]
    expect(result).toEqual expected

  xit "discards neither first nor last", ->
    data = [1, 2, 3]
    result = Strain.discard data, (x) -> x % 2 == 0
    expected = [1, 3]
    expect(result).toEqual expected

  xit "discards strings", ->
    data = ["apple", "zebra", "banana", "zombies", "cherimoya", "zealot"]
    result = Strain.discard data, (value) -> value[0] == "z"
    expected = ["apple", "banana", "cherimoya"]
    expect(result).toEqual expected

  xit "discards lists", ->
    data = [[1, 2, 3], [5, 5, 5], [5, 1, 2], [2, 1, 2], [1, 5, 2], [2, 2, 1], [1, 2, 5]]
    result = Strain.discard data, (value) -> 5 in value
    expected = [[1, 2, 3], [2, 1, 2], [2, 2, 1]]
    expect(result).toEqual expected
