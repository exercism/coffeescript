class Darts
  score: (x, y) ->
    @distance = Math.sqrt(Math.pow(x, 2) + Math.pow(y, 2))
    if distance <= 1
      10
    else if distance <= 5
      5
    else if distance <= 10
      1
    else
      0

module.exports = Darts
