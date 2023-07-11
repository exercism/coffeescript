class Triangle

  constructor: (args...) ->
    @sides = args

  equilateral: ->
    (new Set(@sides)).size is 1 and @validTraingle() and @sides[0] isnt 0
  
  isosceles: ->
    (new Set(@sides)).size <= 2 and @validTraingle()

  scalene: ->
    (new Set(@sides)).size is 3 and @validTraingle()

  validTraingle: ->
    @sides[0] + @sides[1] >= @sides[2] and @sides[1] + @sides[2] >= @sides[0] and @sides[0] + @sides[2] >= @sides[1]

module.exports = Triangle
