class QueensAttack
  constructor: (queen) ->
    throw "row not positive" if queen.row < 0
    throw "column not positive" if queen.column < 0
    throw "row not on board" if queen.row > 7
    throw "column not on board" if queen.column > 7
    @row = queen.row
    @column = queen.column

  canAttack: (other_queen) ->
    same_row = @row is other_queen.row
    same_column = @column is other_queen.column
    same_diagonal = Math.abs(@row - other_queen.row) is Math.abs(@column - other_queen.column)
    same_row or same_column or same_diagonal

module.exports = QueensAttack
