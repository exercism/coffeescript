# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/matching-brackets/canonical-data.json
# File last updated on 2026-11-08T05:29:16+00:00

MatchingBrackets = require './matching-brackets'

describe "Matching Brackets", ->
  it "paired square brackets", ->
    value = "[]"
    expect(MatchingBrackets.isPaired value).toEqual true

  xit "empty string", ->
    value = ""
    expect(MatchingBrackets.isPaired value).toEqual true

  xit "unpaired brackets", ->
    value = "[["
    expect(MatchingBrackets.isPaired value).toEqual false

  xit "wrong ordered brackets", ->
    value = "}{"
    expect(MatchingBrackets.isPaired value).toEqual false

  xit "wrong closing bracket", ->
    value = "{]"
    expect(MatchingBrackets.isPaired value).toEqual false

  xit "paired with whitespace", ->
    value = "{ }"
    expect(MatchingBrackets.isPaired value).toEqual true

  xit "partially paired brackets", ->
    value = "{[])"
    expect(MatchingBrackets.isPaired value).toEqual false

  xit "simple nested brackets", ->
    value = "{[]}"
    expect(MatchingBrackets.isPaired value).toEqual true

  xit "several paired brackets", ->
    value = "{}[]"
    expect(MatchingBrackets.isPaired value).toEqual true

  xit "paired and nested brackets", ->
    value = "([{}({}[])])"
    expect(MatchingBrackets.isPaired value).toEqual true

  xit "unopened closing brackets", ->
    value = "{[)][]}"
    expect(MatchingBrackets.isPaired value).toEqual false

  xit "unpaired and nested brackets", ->
    value = "([{])"
    expect(MatchingBrackets.isPaired value).toEqual false

  xit "paired and wrong nested brackets", ->
    value = "[({]})"
    expect(MatchingBrackets.isPaired value).toEqual false

  xit "paired and wrong nested brackets but innermost are correct", ->
    value = "[({}])"
    expect(MatchingBrackets.isPaired value).toEqual false

  xit "paired and incomplete brackets", ->
    value = "{}["
    expect(MatchingBrackets.isPaired value).toEqual false

  xit "too many closing brackets", ->
    value = "[]]"
    expect(MatchingBrackets.isPaired value).toEqual false

  xit "early unexpected brackets", ->
    value = ")()"
    expect(MatchingBrackets.isPaired value).toEqual false

  xit "early mismatched brackets", ->
    value = "{)()"
    expect(MatchingBrackets.isPaired value).toEqual false

  xit "math expression", ->
    value = "(((185 + 223.85) * 15) - 543)/2"
    expect(MatchingBrackets.isPaired value).toEqual true

  xit "complex latex expression", ->
    value = "\\left(\\begin{array}{cc} \\frac{1}{3} & x\\\\ \\mathrm{e}^{x} &... x^2 \\end{array}\\right)"
    expect(MatchingBrackets.isPaired value).toEqual true
