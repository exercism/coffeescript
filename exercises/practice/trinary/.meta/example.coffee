module.exports = class Trinary
  constructor: (decimal) ->
    @digits = decimal.split('').reverse().map Number

  toDecimal: ->
    return 0 unless @digits.every (digit) => digit < 3

    out = this.digits.reduce this.accumulator, 0
    if isNaN out then 0 else out

  accumulator: (decimal, digit, index) =>
    decimal += digit * Math.pow 3, index
