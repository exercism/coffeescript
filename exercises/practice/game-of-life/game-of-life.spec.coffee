# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/game-of-life/canonical-data.json
# File last updated on 2026-11-05T16:03:53+00:00

GameOfLife = require './game-of-life'

describe "Conway's Game of Life", ->
  it "empty matrix", ->
    game = new GameOfLife []
    game.tick()
    expect(game.matrix).toEqual []

  xit "live cells with zero live neighbors die", ->
    game = new GameOfLife [
      [0, 0, 0]
      [0, 1, 0]
      [0, 0, 0]
    ]
    game.tick()
    expect(game.matrix).toEqual [
      [0, 0, 0]
      [0, 0, 0]
      [0, 0, 0]
    ]

  xit "live cells with only one live neighbor die", ->
    game = new GameOfLife [
      [0, 0, 0]
      [0, 1, 0]
      [0, 1, 0]
    ]
    game.tick()
    expect(game.matrix).toEqual [
      [0, 0, 0]
      [0, 0, 0]
      [0, 0, 0]
    ]

  xit "live cells with two live neighbors stay alive", ->
    game = new GameOfLife [
      [1, 0, 1]
      [1, 0, 1]
      [1, 0, 1]
    ]
    game.tick()
    expect(game.matrix).toEqual [
      [0, 0, 0]
      [1, 0, 1]
      [0, 0, 0]
    ]

  xit "live cells with three live neighbors stay alive", ->
    game = new GameOfLife [
      [0, 1, 0]
      [1, 0, 0]
      [1, 1, 0]
    ]
    game.tick()
    expect(game.matrix).toEqual [
      [0, 0, 0]
      [1, 0, 0]
      [1, 1, 0]
    ]

  xit "dead cells with three live neighbors become alive", ->
    game = new GameOfLife [
      [1, 1, 0]
      [0, 0, 0]
      [1, 0, 0]
    ]
    game.tick()
    expect(game.matrix).toEqual [
      [0, 0, 0]
      [1, 1, 0]
      [0, 0, 0]
    ]

  xit "live cells with four or more neighbors die", ->
    game = new GameOfLife [
      [1, 1, 1]
      [1, 1, 1]
      [1, 1, 1]
    ]
    game.tick()
    expect(game.matrix).toEqual [
      [1, 0, 1]
      [0, 0, 0]
      [1, 0, 1]
    ]

  xit "bigger matrix", ->
    game = new GameOfLife [
      [1, 1, 0, 1, 1, 0, 0, 0]
      [1, 0, 1, 1, 0, 0, 0, 0]
      [1, 1, 1, 0, 0, 1, 1, 1]
      [0, 0, 0, 0, 0, 1, 1, 0]
      [1, 0, 0, 0, 1, 1, 0, 0]
      [1, 1, 0, 0, 0, 1, 1, 1]
      [0, 0, 1, 0, 1, 0, 0, 1]
      [1, 0, 0, 0, 0, 0, 1, 1]
    ]
    game.tick()
    expect(game.matrix).toEqual [
      [1, 1, 0, 1, 1, 0, 0, 0]
      [0, 0, 0, 0, 0, 1, 1, 0]
      [1, 0, 1, 1, 1, 1, 0, 1]
      [1, 0, 0, 0, 0, 0, 0, 1]
      [1, 1, 0, 0, 1, 0, 0, 1]
      [1, 1, 0, 1, 0, 0, 0, 1]
      [1, 0, 0, 0, 0, 0, 0, 0]
      [0, 0, 0, 0, 0, 0, 1, 1]
    ]
