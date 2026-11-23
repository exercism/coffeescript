# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/saddle-points/canonical-data.json
# File last updated on 2026-11-23T01:55:11+00:00

SaddlePoints = require './saddle-points'

byPosition = (a, b) -> a.row - b.row or a.column - b.column

describe "Saddle Points", ->
  it "Can identify single saddle point", ->
    matrix = [
      [9, 8, 7]
      [5, 3, 2]
      [6, 6, 7]
    ]
    results = SaddlePoints matrix
    expect(results.sort(byPosition)).toEqual [{ "row": 2, "column": 1 }]

  xit "Can identify that empty matrix has no saddle points", ->
    matrix = [[]]
    results = SaddlePoints matrix
    expect(results.sort(byPosition)).toEqual []

  xit "Can identify lack of saddle points when there are none", ->
    matrix = [
      [1, 2, 3]
      [3, 1, 2]
      [2, 3, 1]
    ]
    results = SaddlePoints matrix
    expect(results.sort(byPosition)).toEqual []

  xit "Can identify multiple saddle points in a column", ->
    matrix = [
      [4, 5, 4]
      [3, 5, 5]
      [1, 5, 4]
    ]
    results = SaddlePoints matrix
    expect(results.sort(byPosition)).toEqual [
      { "row": 1, "column": 2 }
      { "row": 2, "column": 2 }
      { "row": 3, "column": 2 }
    ]

  xit "Can identify multiple saddle points in a row", ->
    matrix = [
      [6, 7, 8]
      [5, 5, 5]
      [7, 5, 6]
    ]
    results = SaddlePoints matrix
    expect(results.sort(byPosition)).toEqual [
      { "row": 2, "column": 1 }
      { "row": 2, "column": 2 }
      { "row": 2, "column": 3 }
    ]

  xit "Can identify saddle point in bottom right corner", ->
    matrix = [
      [8, 7, 9]
      [6, 7, 6]
      [3, 2, 5]
    ]
    results = SaddlePoints matrix
    expect(results.sort(byPosition)).toEqual [{ "row": 3, "column": 3 }]

  xit "Can identify that saddle points in a single column matrix are those with the minimum value", ->
    matrix = [
      [2]
      [1]
      [4]
      [1]
    ]
    results = SaddlePoints matrix
    expect(results.sort(byPosition)).toEqual [
      { "row": 2, "column": 1 }
      { "row": 4, "column": 1 }
    ]

  xit "Can identify that saddle points in a single row matrix are those with the maximum value", ->
    matrix = [[2, 5, 3, 5]]
    results = SaddlePoints matrix
    expect(results.sort(byPosition)).toEqual [
      { "row": 1, "column": 2 }
      { "row": 1, "column": 4 }
    ]

  xit "Can identify saddle points in a non-square matrix", ->
    matrix = [
      [3, 1, 3]
      [3, 2, 4]
    ]
    results = SaddlePoints matrix
    expect(results.sort(byPosition)).toEqual [
      { "row": 1, "column": 1 }
      { "row": 1, "column": 3 }
    ]
