class IsbnVerifier
  @isValid: (isbn) ->
    digits = isbn.replace /-/g, ''
    return false if digits.length != 10

    sum = 0
    for i in [0..9]
      digit = digits[i]
      if digit == 'X'
        return false if i != 9
        digit = 10
      return false if /\D/.test digit

      sum += digit * (10 - i)
    sum % 11 == 0

module.exports = IsbnVerifier
