SaddlePoints = (matrix) ->
  return [] if matrix.length == 0

  rows = matrix.length
  columns = matrix[0].length

  tallestInEachRow = matrix.map (row) => Math.max row...
  shortestInEachColumn = [0...columns].map (c) ->
    Math.min (matrix[r][c] for r in [0...rows])...
  
  saddlePoints = []
  for i in [0...rows]
    for j in [0...columns]
      current = matrix[i][j]
      if current == tallestInEachRow[i] and current == shortestInEachColumn[j]
        saddlePoints.push {row: i + 1, column: j + 1}
  saddlePoints

module.exports = SaddlePoints
