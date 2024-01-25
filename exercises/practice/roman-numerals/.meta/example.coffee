class RomanNumerals
  mappings =
    1000: "M"
    900: "CM"
    500: "D"
    400: "CD"
    100: "C"
    90: "XC"
    50: "L"
    40: "XL"
    10: "X"
    9: "IX"
    5: "V"
    4: "IV"
    1: "I"

  steps  = Object.keys(mappings).sort (a, b) -> b - a

  @convert: (number) ->
    result = ""
    for step in steps
      numeral = mappings[step]
      while number >= step
          number -= step
          result += numeral
    result

module.exports = RomanNumerals
