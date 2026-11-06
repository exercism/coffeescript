# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/flower-field/canonical-data.json
# File last updated on 2026-11-06T03:02:10+00:00

FlowerField = require './flower-field'

describe "Flower Field", ->
  it "no rows", ->
    garden = []
    expected = []
    expect(FlowerField.annotate garden).toEqual expected

  xit "no columns", ->
    garden = [
      ""
    ]
    expected = [
      ""
    ]
    expect(FlowerField.annotate garden).toEqual expected

  xit "no flowers", ->
    garden = [
      "   "
      "   "
      "   "
    ]
    expected = [
      "   "
      "   "
      "   "
    ]
    expect(FlowerField.annotate garden).toEqual expected

  xit "garden full of flowers", ->
    garden = [
      "***"
      "***"
      "***"
    ]
    expected = [
      "***"
      "***"
      "***"
    ]
    expect(FlowerField.annotate garden).toEqual expected

  xit "flower surrounded by spaces", ->
    garden = [
      "   "
      " * "
      "   "
    ]
    expected = [
      "111"
      "1*1"
      "111"
    ]
    expect(FlowerField.annotate garden).toEqual expected

  xit "space surrounded by flowers", ->
    garden = [
      "***"
      "* *"
      "***"
    ]
    expected = [
      "***"
      "*8*"
      "***"
    ]
    expect(FlowerField.annotate garden).toEqual expected

  xit "horizontal line", ->
    garden = [
      " * * "
    ]
    expected = [
      "1*2*1"
    ]
    expect(FlowerField.annotate garden).toEqual expected

  xit "horizontal line, flowers at edges", ->
    garden = [
      "*   *"
    ]
    expected = [
      "*1 1*"
    ]
    expect(FlowerField.annotate garden).toEqual expected

  xit "vertical line", ->
    garden = [
      " "
      "*"
      " "
      "*"
      " "
    ]
    expected = [
      "1"
      "*"
      "2"
      "*"
      "1"
    ]
    expect(FlowerField.annotate garden).toEqual expected

  xit "vertical line, flowers at edges", ->
    garden = [
      "*"
      " "
      " "
      " "
      "*"
    ]
    expected = [
      "*"
      "1"
      " "
      "1"
      "*"
    ]
    expect(FlowerField.annotate garden).toEqual expected

  xit "cross", ->
    garden = [
      "  *  "
      "  *  "
      "*****"
      "  *  "
      "  *  "
    ]
    expected = [
      " 2*2 "
      "25*52"
      "*****"
      "25*52"
      " 2*2 "
    ]
    expect(FlowerField.annotate garden).toEqual expected

  xit "large garden", ->
    garden = [
      " *  * "
      "  *   "
      "    * "
      "   * *"
      " *  * "
      "      "
    ]
    expected = [
      "1*22*1"
      "12*322"
      " 123*2"
      "112*4*"
      "1*22*2"
      "111111"
    ]
    expect(FlowerField.annotate garden).toEqual expected

  xit "multiple adjacent flowers", ->
    garden = [
      " ** "
    ]
    expected = [
      "1**1"
    ]
    expect(FlowerField.annotate garden).toEqual expected
