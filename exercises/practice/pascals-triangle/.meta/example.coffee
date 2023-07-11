class PascalsTriangle  
  rows: (num) ->
    triangle = []
    for i in [0...num]
      triangle[i] = []
      for j in [0..i]
        triangle[i][j] = if j == 0 or j == i then 1 else triangle[i-1][j-1] + triangle[i-1][j]
    triangle


module.exports = PascalsTriangle
