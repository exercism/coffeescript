# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/two-fer/canonical-data.json
# File last updated on 2026-11-01T03:34:20+00:00

TwoFer = require './two-fer'

describe "Two Fer", ->
  it "no name given", ->
    expect(TwoFer.twoFer()).toEqual "One for you, one for me."

  xit "a name given", ->
    expect(TwoFer.twoFer "Alice").toEqual "One for Alice, one for me."

  xit "another name given", ->
    expect(TwoFer.twoFer "Bob").toEqual "One for Bob, one for me."
