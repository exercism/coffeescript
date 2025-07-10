class Grains
  @square: (number) ->
    if number not in [1..64]
        throw 'square must be between 1 and 64'

    Math.pow(2, number - 1)

  @total: () ->
    Math.pow(2, 64) - 1
module.exports = Grains
