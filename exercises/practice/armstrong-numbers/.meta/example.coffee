class ArmstrongNumbers
  @isArmstrongNumber: (number) ->
    digits = number.toString().split ''
    total = digits.reduce (sum, digit) ->
        sum + Math.pow digit, digits.length
    , 0
    
    total == number

module.exports = ArmstrongNumbers
