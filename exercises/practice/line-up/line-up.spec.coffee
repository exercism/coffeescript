# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/line-up/canonical-data.json
# File last updated on 2026-11-05T15:46:31+00:00

LineUp = require './line-up'

describe "Line Up", ->
  it "format smallest non-exceptional ordinal numeral 4", ->
    expect(LineUp.format "Gianna", 4).toEqual "Gianna, you are the 4th customer we serve today. Thank you!"

  xit "format greatest single digit non-exceptional ordinal numeral 9", ->
    expect(LineUp.format "Maarten", 9).toEqual "Maarten, you are the 9th customer we serve today. Thank you!"

  xit "format non-exceptional ordinal numeral 5", ->
    expect(LineUp.format "Petronila", 5).toEqual "Petronila, you are the 5th customer we serve today. Thank you!"

  xit "format non-exceptional ordinal numeral 6", ->
    expect(LineUp.format "Attakullakulla", 6).toEqual "Attakullakulla, you are the 6th customer we serve today. Thank you!"

  xit "format non-exceptional ordinal numeral 7", ->
    expect(LineUp.format "Kate", 7).toEqual "Kate, you are the 7th customer we serve today. Thank you!"

  xit "format non-exceptional ordinal numeral 8", ->
    expect(LineUp.format "Maximiliano", 8).toEqual "Maximiliano, you are the 8th customer we serve today. Thank you!"

  xit "format exceptional ordinal numeral 1", ->
    expect(LineUp.format "Mary", 1).toEqual "Mary, you are the 1st customer we serve today. Thank you!"

  xit "format exceptional ordinal numeral 2", ->
    expect(LineUp.format "Haruto", 2).toEqual "Haruto, you are the 2nd customer we serve today. Thank you!"

  xit "format exceptional ordinal numeral 3", ->
    expect(LineUp.format "Henriette", 3).toEqual "Henriette, you are the 3rd customer we serve today. Thank you!"

  xit "format smallest two digit non-exceptional ordinal numeral 10", ->
    expect(LineUp.format "Alvarez", 10).toEqual "Alvarez, you are the 10th customer we serve today. Thank you!"

  xit "format non-exceptional ordinal numeral 11", ->
    expect(LineUp.format "Jacqueline", 11).toEqual "Jacqueline, you are the 11th customer we serve today. Thank you!"

  xit "format non-exceptional ordinal numeral 12", ->
    expect(LineUp.format "Juan", 12).toEqual "Juan, you are the 12th customer we serve today. Thank you!"

  xit "format non-exceptional ordinal numeral 13", ->
    expect(LineUp.format "Patricia", 13).toEqual "Patricia, you are the 13th customer we serve today. Thank you!"

  xit "format exceptional ordinal numeral 21", ->
    expect(LineUp.format "Washi", 21).toEqual "Washi, you are the 21st customer we serve today. Thank you!"

  xit "format exceptional ordinal numeral 22 ending in nd even though it is a multiple of 11", ->
    expect(LineUp.format "Ingrid", 22).toEqual "Ingrid, you are the 22nd customer we serve today. Thank you!"

  xit "format exceptional ordinal numeral 33 ending in rd even though it is a multiple of 11", ->
    expect(LineUp.format "Mario", 33).toEqual "Mario, you are the 33rd customer we serve today. Thank you!"

  xit "format exceptional ordinal numeral 52 ending in nd even though it is a multiple of 13", ->
    expect(LineUp.format "Quentin", 52).toEqual "Quentin, you are the 52nd customer we serve today. Thank you!"

  xit "format exceptional ordinal numeral 62", ->
    expect(LineUp.format "Nayra", 62).toEqual "Nayra, you are the 62nd customer we serve today. Thank you!"

  xit "format non-exceptional ordinal numeral 72 ending in nd even though it is a multiple of 12", ->
    expect(LineUp.format "Ugo", 72).toEqual "Ugo, you are the 72nd customer we serve today. Thank you!"

  xit "format exceptional ordinal numeral 91 ending in st even though it is a multiple of 13", ->
    expect(LineUp.format "Boris", 91).toEqual "Boris, you are the 91st customer we serve today. Thank you!"

  xit "format exceptional ordinal numeral 100", ->
    expect(LineUp.format "John", 100).toEqual "John, you are the 100th customer we serve today. Thank you!"

  xit "format exceptional ordinal numeral 101", ->
    expect(LineUp.format "Zeinab", 101).toEqual "Zeinab, you are the 101st customer we serve today. Thank you!"

  xit "format non-exceptional ordinal numeral 112", ->
    expect(LineUp.format "Knud", 112).toEqual "Knud, you are the 112th customer we serve today. Thank you!"

  xit "format exceptional ordinal numeral 123", ->
    expect(LineUp.format "Yma", 123).toEqual "Yma, you are the 123rd customer we serve today. Thank you!"

  xit "format large number 972 ending in nd even though it is a multiple of 12", ->
    expect(LineUp.format "Elias", 972).toEqual "Elias, you are the 972nd customer we serve today. Thank you!"
