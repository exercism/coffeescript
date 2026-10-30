# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/difference-of-squares/canonical-data.json
# File last updated on 2026-10-30T22:10:01+00:00

DifferenceofSquares = require './difference-of-squares'

describe "Difference of Squares", ->
  describe "Square the sum of the numbers up to the given number", ->
    it "square of sum 1", ->
      expect(DifferenceofSquares.squareOfSum 1).toEqual 1

    xit "square of sum 5", ->
      expect(DifferenceofSquares.squareOfSum 5).toEqual 225

    xit "square of sum 100", ->
      expect(DifferenceofSquares.squareOfSum 100).toEqual 25502500

  describe "Sum the squares of the numbers up to the given number", ->
    xit "sum of squares 1", ->
      expect(DifferenceofSquares.sumOfSquares 1).toEqual 1

    xit "sum of squares 5", ->
      expect(DifferenceofSquares.sumOfSquares 5).toEqual 55

    xit "sum of squares 100", ->
      expect(DifferenceofSquares.sumOfSquares 100).toEqual 338350

  describe "Subtract sum of squares from square of sums", ->
    xit "difference of squares 1", ->
      expect(DifferenceofSquares.differenceOfSquares 1).toEqual 0

    xit "difference of squares 5", ->
      expect(DifferenceofSquares.differenceOfSquares 5).toEqual 170

    xit "difference of squares 100", ->
      expect(DifferenceofSquares.differenceOfSquares 100).toEqual 25164150
