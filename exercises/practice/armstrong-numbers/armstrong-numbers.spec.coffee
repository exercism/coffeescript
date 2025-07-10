ArmstrongNumbers = require './armstrong-numbers'

describe 'Armstrong Numbers', ->
  it 'zero is an Armstrong number', ->
    result = ArmstrongNumbers.isArmstrongNumber 0
    expect(result).toEqual true

  xit 'single-digit numbers are Armstrong numbers', ->
    result = ArmstrongNumbers.isArmstrongNumber 5
    expect(result).toEqual true

  xit 'there are no two-digit Armstrong numbers', ->
    result = ArmstrongNumbers.isArmstrongNumber 10
    expect(result).toEqual false

  xit 'three-digit number that is an Armstrong number', ->
    result = ArmstrongNumbers.isArmstrongNumber 153
    expect(result).toEqual true

  xit 'three-digit number that is not an Armstrong number', ->
    result = ArmstrongNumbers.isArmstrongNumber 100
    expect(result).toEqual false

  xit 'four-digit number that is an Armstrong number', ->
    result = ArmstrongNumbers.isArmstrongNumber 9474
    expect(result).toEqual true

  xit 'four-digit number that is not an Armstrong number', ->
    result = ArmstrongNumbers.isArmstrongNumber 9475
    expect(result).toEqual false

  xit 'seven-digit number that is an Armstrong number', ->
    result = ArmstrongNumbers.isArmstrongNumber 9926315
    expect(result).toEqual true

  xit 'seven-digit number that is not an Armstrong number', ->
    result = ArmstrongNumbers.isArmstrongNumber 9926314
    expect(result).toEqual false

