# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/reverse-string/canonical-data.json
# File last updated on 2026-11-04T23:50:32+00:00

ReverseString = require './reverse-string'

describe "Reverse String", ->
  it "an empty string", ->
    expect(ReverseString.reverse "").toEqual ""

  xit "a word", ->
    expect(ReverseString.reverse "robot").toEqual "tobor"

  xit "a capitalized word", ->
    expect(ReverseString.reverse "Ramen").toEqual "nemaR"

  xit "a sentence with punctuation", ->
    expect(ReverseString.reverse "I'm hungry!").toEqual "!yrgnuh m'I"

  xit "a palindrome", ->
    expect(ReverseString.reverse "racecar").toEqual "racecar"

  xit "an even-sized word", ->
    expect(ReverseString.reverse "drawer").toEqual "reward"
