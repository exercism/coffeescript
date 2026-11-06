# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/pascals-triangle/canonical-data.json
# File last updated on 2026-11-06T03:02:13+00:00

PascalsTriangle = require './pascals-triangle'

describe "Pascal's Triangle", ->
  it "zero rows", ->
    triangle = new PascalsTriangle
    expected = []
    expect(triangle.rows 0).toEqual expected

  xit "single row", ->
    triangle = new PascalsTriangle
    expected = [
      [1]
    ]
    expect(triangle.rows 1).toEqual expected

  xit "two rows", ->
    triangle = new PascalsTriangle
    expected = [
      [1]
      [1, 1]
    ]
    expect(triangle.rows 2).toEqual expected

  xit "three rows", ->
    triangle = new PascalsTriangle
    expected = [
      [1]
      [1, 1]
      [1, 2, 1]
    ]
    expect(triangle.rows 3).toEqual expected

  xit "four rows", ->
    triangle = new PascalsTriangle
    expected = [
      [1]
      [1, 1]
      [1, 2, 1]
      [1, 3, 3, 1]
    ]
    expect(triangle.rows 4).toEqual expected

  xit "five rows", ->
    triangle = new PascalsTriangle
    expected = [
      [1]
      [1, 1]
      [1, 2, 1]
      [1, 3, 3, 1]
      [1, 4, 6, 4, 1]
    ]
    expect(triangle.rows 5).toEqual expected

  xit "six rows", ->
    triangle = new PascalsTriangle
    expected = [
      [1]
      [1, 1]
      [1, 2, 1]
      [1, 3, 3, 1]
      [1, 4, 6, 4, 1]
      [1, 5, 10, 10, 5, 1]
    ]
    expect(triangle.rows 6).toEqual expected

  xit "ten rows", ->
    triangle = new PascalsTriangle
    expected = [
      [1]
      [1, 1]
      [1, 2, 1]
      [1, 3, 3, 1]
      [1, 4, 6, 4, 1]
      [1, 5, 10, 10, 5, 1]
      [1, 6, 15, 20, 15, 6, 1]
      [1, 7, 21, 35, 35, 21, 7, 1]
      [1, 8, 28, 56, 70, 56, 28, 8, 1]
      [1, 9, 36, 84, 126, 126, 84, 36, 9, 1]
    ]
    expect(triangle.rows 10).toEqual expected
