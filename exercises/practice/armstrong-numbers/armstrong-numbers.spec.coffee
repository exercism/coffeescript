# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/armstrong-numbers/canonical-data.json
# File last updated on 2026-10-30T16:23:23+00:00

ArmstrongNumbers = require './armstrong-numbers'

describe "Armstrong Numbers", ->
  it "Zero is an Armstrong number", ->
    expect(ArmstrongNumbers.isArmstrongNumber 0).toEqual true

  xit "Single-digit numbers are Armstrong numbers", ->
    expect(ArmstrongNumbers.isArmstrongNumber 5).toEqual true

  xit "There are no two-digit Armstrong numbers", ->
    expect(ArmstrongNumbers.isArmstrongNumber 10).toEqual false

  xit "Three-digit number that is an Armstrong number", ->
    expect(ArmstrongNumbers.isArmstrongNumber 153).toEqual true

  xit "Three-digit number that is not an Armstrong number", ->
    expect(ArmstrongNumbers.isArmstrongNumber 100).toEqual false

  xit "Four-digit number that is an Armstrong number", ->
    expect(ArmstrongNumbers.isArmstrongNumber 9474).toEqual true

  xit "Four-digit number that is not an Armstrong number", ->
    expect(ArmstrongNumbers.isArmstrongNumber 9475).toEqual false

  xit "Seven-digit number that is an Armstrong number", ->
    expect(ArmstrongNumbers.isArmstrongNumber 9926315).toEqual true

  xit "Seven-digit number that is not an Armstrong number", ->
    expect(ArmstrongNumbers.isArmstrongNumber 9926314).toEqual false
