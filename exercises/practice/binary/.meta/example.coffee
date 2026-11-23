module.exports = class Binary

  constructor: (binary) -> @binary = binary.split('').map Number

  toDecimal: ->
    return 0 unless @binary.every (digit) -> digit < 2

    @binary.reduce ((decimal, digit) -> decimal * 2 + digit), 0
