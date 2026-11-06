# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/spiral-matrix/canonical-data.json
# File last updated on 2026-11-06T04:42:15+00:00

SpiralMatrix = require './spiral-matrix'

describe "Spiral Matrix", ->
  it "empty spiral", ->
    expect(SpiralMatrix.spiralMatrix 0).toEqual []

  xit "trivial spiral", ->
    expect(SpiralMatrix.spiralMatrix 1).toEqual [
      [1]
    ]

  xit "spiral of size 2", ->
    expect(SpiralMatrix.spiralMatrix 2).toEqual [
      [1, 2]
      [4, 3]
    ]

  xit "spiral of size 3", ->
    expect(SpiralMatrix.spiralMatrix 3).toEqual [
      [1, 2, 3]
      [8, 9, 4]
      [7, 6, 5]
    ]

  xit "spiral of size 4", ->
    expect(SpiralMatrix.spiralMatrix 4).toEqual [
      [1, 2, 3, 4]
      [12, 13, 14, 5]
      [11, 16, 15, 6]
      [10, 9, 8, 7]
    ]

  xit "spiral of size 5", ->
    expect(SpiralMatrix.spiralMatrix 5).toEqual [
      [1, 2, 3, 4, 5]
      [16, 17, 18, 19, 6]
      [15, 24, 25, 20, 7]
      [14, 23, 22, 21, 8]
      [13, 12, 11, 10, 9]
    ]
