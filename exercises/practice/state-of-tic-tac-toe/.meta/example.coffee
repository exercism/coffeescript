gamestate = (board) ->
  xCount = 0
  oCount = 0
  
  for row in board
    for cell in row
      if cell == 'X'
        xCount++
      else if cell == 'O'
        oCount++

  if oCount > xCount
    throw new Error 'Wrong turn order: O started'
  
  if xCount > oCount + 1
    throw new Error 'Wrong turn order: X went twice'

  xWon = checkWin(board, 'X')
  oWon = checkWin(board, 'O')

  if xWon and oWon
    throw new Error 'Impossible board: game should have ended after the game was won'
  
  if xWon
    if xCount == oCount
      throw new Error 'Impossible board: game should have ended after the game was won'
    return 'win'
    
  if oWon
    if xCount > oCount
      throw new Error 'Impossible board: game should have ended after the game was won'
    return 'win'

  if xCount + oCount == 9
    return 'draw'

  return 'ongoing'

checkWin = (board, player) ->
  # Three in a row
  for row in board
    if row == player.repeat(3)
      return true

  # Three in a column
  for col in [0..2]
    matches = 0
    for row in [0..2]
      if board[row][col] == player
        matches += 1
    if matches == 3
      return true

  # Diagonal top-left to bottom-right
  matches = 0
  for i in [0..2]
    if board[i][i] == player
      matches += 1
  if matches == 3
    return true

  # Diagonal top-right to bottom-left
  matches = 0
  for i in [0..2]
    if board[i][2-i] == player
      matches += 1
  if matches == 3
    return true

  return false

module.exports = gamestate
