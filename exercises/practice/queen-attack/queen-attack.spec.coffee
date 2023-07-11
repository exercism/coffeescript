QueenAttack = require './queen-attack'

describe 'QueenAttack', ->
  it 'queen with a valid position', ->
    new QueenAttack({row: 2, column: 2})

  xit 'queen must have positive row', ->
    expect ->
      new QueenAttack({row: -2, column: 2})
    .toThrow('row not positive')

  xit 'queen must have row on board', ->
    expect ->
      new QueenAttack({row: 8, column: 4})
    .toThrow('row not on board')

  xit 'queen must have positive column', ->
    expect ->
      new QueenAttack({row: 2, column: -2})
    .toThrow('column not positive')

  xit 'queen must have column on board', ->
    expect ->
      new QueenAttack({row: 4, column: 8})
    .toThrow('column not on board')

  xit 'cannot attack', ->
    white_queen = new QueenAttack({row: 2, column: 4})
    black_queen = new QueenAttack({row: 6, column: 6})
    expect(white_queen.canAttack(black_queen)).toEqual(false)

  xit 'can attack on same row', ->
    white_queen = new QueenAttack({row: 2, column: 4})
    black_queen = new QueenAttack({row: 2, column: 6})
    expect(white_queen.canAttack(black_queen)).toEqual(true)

  xit 'can attack on same column', ->
    white_queen = new QueenAttack({row: 4, column: 5})
    black_queen = new QueenAttack({row: 2, column: 5})
    expect(white_queen.canAttack(black_queen)).toEqual(true)

  xit 'can attack on first diagonal', ->
    white_queen = new QueenAttack({row: 2, column: 2})
    black_queen = new QueenAttack({row: 0, column: 4})
    expect(white_queen.canAttack(black_queen)).toEqual(true)

  xit 'can attack on second diagonal', ->
    white_queen = new QueenAttack({row: 2, column: 2})
    black_queen = new QueenAttack({row: 3, column: 1})
    expect(white_queen.canAttack(black_queen)).toEqual(true)

  xit 'can attack on third diagonal', ->
    white_queen = new QueenAttack({row: 2, column: 2})
    black_queen = new QueenAttack({row: 1, column: 1})
    expect(white_queen.canAttack(black_queen)).toEqual(true)

  xit 'can attack on fourth diagonal', ->
    white_queen = new QueenAttack({row: 1, column: 7})
    black_queen = new QueenAttack({row: 0, column: 6})
    expect(white_queen.canAttack(black_queen)).toEqual(true)

  xit 'cannot attack if falling diagonals are only the same when reflected across the longest falling diagonal', ->
    white_queen = new QueenAttack({row: 4, column: 1})
    black_queen = new QueenAttack({row: 2, column: 5})
    expect(white_queen.canAttack(black_queen)).toEqual(false)
