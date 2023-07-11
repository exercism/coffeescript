Triangle = require './triangle'

describe 'Triangle', ->
  describe 'equilateral', ->
    it 'all sides are equal', ->
      triangle = new Triangle(2, 2, 2)
      expect(triangle.equilateral()).toEqual true

    xit 'any side is unequal', ->
      triangle = new Triangle(2, 3, 2)
      expect(triangle.equilateral()).toEqual false

    xit 'no sides are equal', ->
      triangle = new Triangle(5, 4, 6)
      expect(triangle.equilateral()).toEqual false

    xit 'all zero sides is not a triangle', ->
      triangle = new Triangle(0, 0, 0)
      expect(triangle.equilateral()).toEqual false

    xit 'sides may be floats', ->
      triangle = new Triangle(0.5, 0.5, 0.5)
      expect(triangle.equilateral()).toEqual true

  describe 'isosceles', ->
    xit 'last two sides are equal', ->
      triangle = new Triangle(3, 4, 4)
      expect(triangle.isosceles()).toEqual true

    xit 'first two sides are equal', ->
      triangle = new Triangle(4, 4, 3)
      expect(triangle.isosceles()).toEqual true

    xit 'first and last sides are equal', ->
      triangle = new Triangle(4, 3, 4)
      expect(triangle.isosceles()).toEqual true

    xit 'equilateral triangles are also isosceles', ->
      triangle = new Triangle(4, 4, 4)
      expect(triangle.isosceles()).toEqual true

    xit 'no sides are equal', ->
      triangle = new Triangle(2, 3, 4)
      expect(triangle.isosceles()).toEqual false

    xit 'first triangle inequality violation', ->
      triangle = new Triangle(1, 1, 3)
      expect(triangle.isosceles()).toEqual false

    xit 'second triangle inequality violation', ->
      triangle = new Triangle(1, 3, 1)
      expect(triangle.isosceles()).toEqual false

    xit 'third triangle inequality violation', ->
      triangle = new Triangle(3, 1, 1)
      expect(triangle.isosceles()).toEqual false

    xit 'sides may be floats', ->
      triangle = new Triangle(0.5, 0.4, 0.5)
      expect(triangle.isosceles()).toEqual true

  describe 'scalene', ->
    xit 'no sides are equal', ->
      triangle = new Triangle(5, 4, 6)
      expect(triangle.scalene()).toEqual true

    xit 'all sides are equal', ->
      triangle = new Triangle(4, 4, 4)
      expect(triangle.scalene()).toEqual false

    xit 'first and second sides are equal', ->
      triangle = new Triangle(4, 4, 3)
      expect(triangle.scalene()).toEqual false

    xit 'first and third sides are equal', ->
      triangle = new Triangle(3, 4, 3)
      expect(triangle.scalene()).toEqual false

    xit 'second and third  sides are equal', ->
      triangle = new Triangle(4, 3, 3)
      expect(triangle.scalene()).toEqual false

    xit 'may not violate triangle inequality', ->
      triangle = new Triangle(7, 3, 2)
      expect(triangle.scalene()).toEqual false

    xit 'sides may be floats', ->
      triangle = new Triangle(0.5, 0.4, 0.6)
      expect(triangle.scalene()).toEqual true