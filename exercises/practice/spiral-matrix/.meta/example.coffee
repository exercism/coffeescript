class SpiralMatrix
  @spiralMatrix: (size) ->
    matrix = Array(size ** 2).fill 0
    currentX = 0
    stopX = size - 1
    currentY = 0
    stopY = size - 1

    currentNumber = 1

    while currentX < stopX and currentY <= stopY
      for n in [currentX..stopX]
        i = currentY * size + n
        matrix[i] = currentNumber++
      currentY++

      for n in [currentY..stopY]
        i = n * size + stopX
        matrix[i] = currentNumber++
      stopX--

      if currentY == stopY
        break

      for n in [stopX..currentX] by -1
        i = stopY * size + n
        matrix[i] = currentNumber++
      stopY--

      for n in [stopY..currentY] by -1
        i = n * size + currentX
        matrix[i] = currentNumber++
      currentX++

    lastPos = currentY * size + currentX
    matrix[lastPos] = currentNumber

    result = []
    for i in [0...size]
      arr = matrix.slice(i * size, (i + 1) * size)
      result.push arr

    result

module.exports = SpiralMatrix

