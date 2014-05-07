Triangle = require './triangle'

describe "Triangle", ->
  it 'is equilateral with equal sides', ->
    triangle = new Triangle(2,2,2)
    expect(triangle.kind()).toBe 'equilateral'

  xit 'is equilateral for larger triangle', ->
    triangle = new Triangle(10,10,10)
    expect(triangle.kind()).toBe 'equilateral'

  xit 'is isosceles when last two sides equal', ->
    triangle = new Triangle(2,4,4)
    expect(triangle.kind()).toBe 'isosceles'

  xit 'is isosceles when first and last equal', ->
    triangle = new Triangle(4,2,4)
    expect(triangle.kind()).toBe 'isosceles'

  xit 'is isosceles when first two equal', ->
    triangle = new Triangle(4,4,2)
    expect(triangle.kind()).toBe 'isosceles'

  xit 'is isosceles with arbitrary sides', ->
    triangle = new Triangle(10,10,2)
    expect(triangle.kind()).toBe 'isosceles'

  xit 'is scalene when no sides equal', ->
    triangle = new Triangle(3,4,5)
    expect(triangle.kind()).toBe 'scalene'

  xit 'is scalene when larger as well', ->
    triangle = new Triangle(10,11,12)
    expect(triangle.kind()).toBe 'scalene'

  xit 'is scalene in decesending order', ->
    triangle = new Triangle(5,4,3)
    expect(triangle.kind()).toBe 'scalene'

  xit 'is legal when very small', ->
    triangle = new Triangle(.03,.06,.04)
    expect(triangle.kind()).toBe 'scalene'

  xit 'is illegal when a side is negative', ->
    try
      new Triangle(2,3,-5)
    catch error
      expect(error).toBe "negative sides are illegal"

  xit 'is illegal when violating triangle inequality', ->
    try
      new Triangle(1,1,3)
    catch error
      expect(error).toBe "violation of triangle inequality"

  xit 'is illegal when violating triangle inequality 2', ->
    try
      new Triangle(2,2,4)
    catch error
      expect(error).toBe "violation of triangle inequality"

  xit 'is illegal when violating triangle inequality 3', ->
    try
      new Triangle(7,3,2)
    catch error
      expect(error).toBe "violation of triangle inequality"
