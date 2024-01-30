DS = require './difference-of-squares'

describe 'Difference of Squares', ->
  describe 'Square the sum of the numbers up to the given number', ->
    it 'square of sum 1', ->
      result = DS.squareOfSum 1
      expect(result).toEqual 1

    xit 'square of sum 5', ->
      result = DS.squareOfSum 5
      expect(result).toEqual 225

    xit 'square of sum 100', ->
      result = DS.squareOfSum 100
      expect(result).toEqual 25502500

  describe 'Sum the squares of the numbers up to the given number', ->
    xit 'sum of squares 1', ->
      result = DS.sumOfSquares 1
      expect(result).toEqual 1

    xit 'sum of squares 5', ->
      result = DS.sumOfSquares 5
      expect(result).toEqual 55

    xit 'sum of squares 100', ->
      result = DS.sumOfSquares 100
      expect(result).toEqual 338350

  describe 'Subtract sum of squares from square of sums', ->
    xit 'difference of squares 1', ->
      result = DS.differenceOfSquares 1
      expect(result).toEqual 0

    xit 'difference of squares 5', ->
      result = DS.differenceOfSquares 5
      expect(result).toEqual 170

    xit 'difference of squares 100', ->
      result = DS.differenceOfSquares 100
      expect(result).toEqual 25164150