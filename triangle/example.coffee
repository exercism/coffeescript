Array::uniq = ->
  output = {}
  output[@[key]] = @[key] for key in [0...@length]
  value for key, value of output

class Triangle

  constructor: (side1, side2, side3) ->
    @sides = [side1, side2, side3]
    checkNegative @sides
    checkInequality @sides

  kind: ->
    if @sides.uniq().length == 1
      'equilateral'
    else if @sides.uniq().length == 2
      'isosceles'
    else
      'scalene'

  checkNegative = (sides) ->
    for side in sides
      throw 'negative sides are illegal' if side < 0

  checkInequality = (sides) ->
    if sides[0] + sides[1] <= sides[2] || sides[1] + sides[2] <= sides[0] || sides[0] + sides[2] <= sides[1]
      throw 'violation of triangle inequality'

module.exports = Triangle
