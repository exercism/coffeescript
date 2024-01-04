class SquareRoot
  squareRoot: (radicand) ->
    results = 0
    while (results * results != radicand)
        results += 1
    results

module.exports = SquareRoot
