gamestate = require './state-of-tic-tac-toe'

describe 'State of Tic-Tac-Toe', ->
  it 'Finished game where X won via left column victory', ->
    board = ['XOO', 'X  ', 'X  ']
    expect(gamestate board).toEqual 'win'

  xit 'Finished game where X won via middle column victory', ->
    board = ['OXO', ' X ', ' X ']
    expect(gamestate board).toEqual 'win'

  xit 'Finished game where X won via right column victory', ->
    board = ['OOX', '  X', '  X']
    expect(gamestate board).toEqual 'win'

  xit 'Finished game where O won via left column victory', ->
    board = ['OXX', 'OX ', 'O  ']
    expect(gamestate board).toEqual 'win'

  xit 'Finished game where O won via middle column victory', ->
    board = ['XOX', ' OX', ' O ']
    expect(gamestate board).toEqual 'win'

  xit 'Finished game where O won via right column victory', ->
    board = ['XXO', ' XO', '  O']
    expect(gamestate board).toEqual 'win'

  xit 'Finished game where X won via top row victory', ->
    board = ['XXX', 'XOO', 'O  ']
    expect(gamestate board).toEqual 'win'

  xit 'Finished game where X won via middle row victory', ->
    board = ['O  ', 'XXX', ' O ']
    expect(gamestate board).toEqual 'win'

  xit 'Finished game where X won via bottom row victory', ->
    board = [' OO', 'O X', 'XXX']
    expect(gamestate board).toEqual 'win'

  xit 'Finished game where O won via top row victory', ->
    board = ['OOO', 'XXO', 'XX ']
    expect(gamestate board).toEqual 'win'

  xit 'Finished game where O won via middle row victory', ->
    board = ['XX ', 'OOO', 'X  ']
    expect(gamestate board).toEqual 'win'

  xit 'Finished game where O won via bottom row victory', ->
    board = ['XOX', ' XX', 'OOO']
    expect(gamestate board).toEqual 'win'

  xit 'Finished game where X won via falling diagonal victory', ->
    board = ['XOO', ' X ', '  X']
    expect(gamestate board).toEqual 'win'

  xit 'Finished game where X won via rising diagonal victory', ->
    board = ['O X', 'OX ', 'X  ']
    expect(gamestate board).toEqual 'win'

  xit 'Finished game where O won via falling diagonal victory', ->
    board = ['OXX', 'OOX', 'X O']
    expect(gamestate board).toEqual 'win'

  xit 'Finished game where O won via rising diagonal victory', ->
    board = ['  O', ' OX', 'OXX']
    expect(gamestate board).toEqual 'win'

  xit 'Finished game where X won via a row and a column victory', ->
    board = ['XXX', 'XOO', 'XOO']
    expect(gamestate board).toEqual 'win'

  xit 'Finished game where X won via two diagonal victories', ->
    board = ['XOX', 'OXO', 'XOX']
    expect(gamestate board).toEqual 'win'

  xit 'Draw', ->
    board = ['XOX', 'XXO', 'OXO']
    expect(gamestate board).toEqual 'draw'

  xit 'Another draw', ->
    board = ['XXO', 'OXX', 'XOO']
    expect(gamestate board).toEqual 'draw'

  xit 'One move in', ->
    board = ['   ', 'X  ', '   ']
    expect(gamestate board).toEqual 'ongoing'

  xit 'Two moves in', ->
    board = ['O  ', ' X ', '   ']
    expect(gamestate board).toEqual 'ongoing'

  xit 'Five moves in', ->
    board = ['X  ', ' XO', 'OX ']
    expect(gamestate board).toEqual 'ongoing'

  xit 'Invalid board: X went twice', ->
    board = ['XX ', '   ', '   ']
    expect(-> gamestate board).toThrow new Error 'Wrong turn order: X went twice'

  xit 'Invalid board: O started', ->
    board = ['OOX', '   ', '   ']
    expect(-> gamestate board).toThrow new Error 'Wrong turn order: O started'

  xit 'Invalid board: X won and O kept playing', ->
    board = ['XXX', 'OOO', '   ']
    expect(-> gamestate board).toThrow new Error 'Impossible board: game should have ended after the game was won'

  xit 'Invalid board: players kept playing after a win', ->
    board = ['XXX', 'OOO', 'XOX']
    expect(-> gamestate board).toThrow new Error 'Impossible board: game should have ended after the game was won'
