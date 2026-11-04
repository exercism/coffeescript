# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/resistor-color-duo/canonical-data.json
# File last updated on 2026-11-04T23:53:52+00:00

ResistorColorDuo = require './resistor-color-duo'

describe "Resistor Color Duo", ->
  it "Brown and black", ->
    expect(ResistorColorDuo.value ["brown", "black"]).toEqual 10

  xit "Blue and grey", ->
    expect(ResistorColorDuo.value ["blue", "grey"]).toEqual 68

  xit "Yellow and violet", ->
    expect(ResistorColorDuo.value ["yellow", "violet"]).toEqual 47

  xit "White and red", ->
    expect(ResistorColorDuo.value ["white", "red"]).toEqual 92

  xit "Orange and orange", ->
    expect(ResistorColorDuo.value ["orange", "orange"]).toEqual 33

  xit "Ignore additional colors", ->
    expect(ResistorColorDuo.value ["green", "brown", "orange"]).toEqual 51

  xit "Black and brown, one-digit", ->
    expect(ResistorColorDuo.value ["black", "brown"]).toEqual 1
