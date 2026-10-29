# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/accumulate/canonical-data.json
# File last updated on 2026-10-29T04:39:31+00:00

require './accumulate'

describe "Accumulate", ->
  it "accumulate empty", ->
    accumulator = (x) -> x * x
    items = []
    expected = []
    expect(items.accumulate(accumulator)).toEqual expected

  xit "accumulate squares", ->
    accumulator = (x) -> x * x
    items = [1, 2, 3]
    expected = [1, 4, 9]
    expect(items.accumulate(accumulator)).toEqual expected

  xit "accumulate upcases", ->
    accumulator = (x) -> x.toUpperCase()
    items = ["Hello", "world"]
    expected = ["HELLO", "WORLD"]
    expect(items.accumulate(accumulator)).toEqual expected

  xit "accumulate reversed strings", ->
    accumulator = (x) -> x.split("").reverse().join("")
    items = ["the", "quick", "brown", "fox", "etc"]
    expected = ["eht", "kciuq", "nworb", "xof", "cte"]
    expect(items.accumulate(accumulator)).toEqual expected

  xit "accumulate recursively", ->
    accumulator = (x) ->
      ["1", "2", "3"].accumulate (y) -> "#{x}#{y}"
    items = ["a", "b", "c"]
    expected = [["a1", "a2", "a3"], ["b1", "b2", "b3"], ["c1", "c2", "c3"]]
    expect(items.accumulate(accumulator)).toEqual expected
