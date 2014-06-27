class Pascal

  constructor: (@iterations) ->
    @array = [[1]]

    for i in [1..(@iterations - 1)] by 1
      @array[i] = new Array()
      for j in [0..(@array[i-1].length)] by 1
        a = 0
        b = 0
        if j - 1 < 0
          a = 0
        else
          a = @array[i-1][j-1]
        if j > ((@array[i-1].length) - 1)
          b = 0
        else
          b = @array[i-1][j]
        @array[i][j] = a + b
    @array

module.exports = Pascal
