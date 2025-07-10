class FlowerField
  @annotate: (garden) ->
    if garden.length < 1
      return garden
    if garden[0].length < 1
      return garden

    board = garden.map (row) -> row.split ''

    board.map (row, x) ->
      r = row.map (cell, y) ->
        if cell == '*'
          return cell
        count = 0
        for i in [-1..1]
          for j in [-1..1]
            if i + x >= 0 && i + x < board.length && j + y >= 0 && j + y < row.length
              count += 1 if board[i + x][j + y] == '*'
        if count == 0
          ' '
        else
          count.toString()
      r.join ''

module.exports = FlowerField
