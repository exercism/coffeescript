class AllYourBase
  constructor: ({@inputBase, @outputBase}) ->
    throw new Error "input base must be >= 2" unless @inputBase >= 2
    throw new Error "output base must be >= 2" unless @outputBase >= 2

  rebase: (digits) ->
    if digits.some ((d) => d < 0 or d >= @inputBase)
      throw new Error "all digits must satisfy 0 <= d < input base"

    decimal = digits.reduce ((dec, d) => dec * @inputBase + d), 0

    if decimal is 0
      [0]
    else
      outputDigits = []
      while decimal > 0
        outputDigits.unshift decimal % @outputBase
        decimal //= @outputBase
      outputDigits


module.exports = AllYourBase
