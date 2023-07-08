class Luhn
  constructor: (@num) ->

  valid: ->
    @num = @num.replace /\s+/g, ''
    return false if @num.length < 2
    return false if @num.match /\D/
    sum = 0
    for digit, i in @num.split('').reverse()
      digit = parseInt digit
      if i % 2 == 1
        digit *= 2
        digit -= 9 if digit > 9
      sum += digit
    sum % 10 == 0

module.exports = Luhn
