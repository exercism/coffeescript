class GameOfLife
  constructor: (@matrix) ->

  tick: () ->
    return if not @matrix.length

    rows = @matrix.length
    cols = @matrix[0].length
    newMatrix = JSON.parse(JSON.stringify(@matrix))

    for row in [0...rows]
        for col in [0...cols]
            liveNeighbors = 0
            for newRow in [row-1..row+1]
                for newCol in [col-1..col+1]
                    if (newRow == row && newCol == col)
                        continue 
                    if newRow < 0 || newCol < 0 || newRow >= rows || newCol >= cols
                        continue
                    liveNeighbors += @matrix[newRow][newCol]

            liveNeighbors

            cell = @matrix[row][col]            
            # Apply the rules
            if cell == 1
                if liveNeighbors < 2 || liveNeighbors > 3
                    cell = 0
            else if liveNeighbors == 3
                cell = 1
            newMatrix[row][col] = cell

    @matrix = newMatrix

module.exports = GameOfLife
