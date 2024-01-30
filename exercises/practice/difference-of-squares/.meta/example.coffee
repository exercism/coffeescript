class DifferenceOfSquares
  @squareOfSum: (number) ->
    sum = [1..number].reduce ((acc, n) -> acc + n), 0
    Math.pow sum, 2

  @sumOfSquares: (number) ->
    [1..number].reduce ((acc, n) -> acc + Math.pow n, 2), 0

  @differenceOfSquares: (number) ->
    (@squareOfSum number) - (@sumOfSquares number)

module.exports = DifferenceOfSquares
